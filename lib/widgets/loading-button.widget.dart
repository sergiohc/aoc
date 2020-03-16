import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = '';
  var cont = new Container();

  LoadingButton({
    @required this.busy, 
    @required this.func, 
    @required this.invert, 
    @required this.text, 
  });
  
  @override
  Widget build(BuildContext context) {
    if (busy) {
      cont =  Container( 
        alignment: Alignment.center,
        height: 50,
        child: CircularProgressIndicator(backgroundColor: Colors.white,
        ),
      );
    } else {
     cont = 
      Container( 
        height: 50,
        margin: EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: invert ? Theme.of(context).primaryColor : Colors.white.withOpacity(0.8), 
          borderRadius: BorderRadius.circular(50)
        ),
        child: FlatButton(
          child: Text(
            text,
            style: TextStyle(
              color: invert ? Colors.white.withOpacity(0.8) : Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: "Big Shoulders Display",
            )
          ),
          onPressed: func,
        ),
      );
    }
    return cont;
  }
}