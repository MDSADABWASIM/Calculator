import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => new _calculatorState();
}

class _calculatorState extends State<calculator> {
var num1=0,num2=0,sum=0;

 TextEditingController T1 = new TextEditingController(text: "0");
 TextEditingController T2= new TextEditingController(text: "0");

 void doAdd(){
   setState((){
    num1=int.parse(T1.text);
    num2=int.parse(T2.text);
    sum=num1+num2;
   });
   }

   void doSub(){
   setState((){
  num1=int.parse(T1.text);
    num2=int.parse(T2.text);
    sum=num1-num2;
   });
   }

   void doMul(){
   setState((){
  num1=int.parse(T1.text);
    num2=int.parse(T2.text);
    sum=num1*num2;
   });
   }

   void doDiv(){
   setState((){
  num1=int.parse(T1.text);
    num2=int.parse(T2.text);
    sum=num1~/num2;
   });
   }

   void doClear(){
     setState((){
     T1.text="0";
     T2.text="0";
     });
   }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    
      appBar: new AppBar(title: new Text("Calculator"),),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text (
             " Output : $sum",
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.brown
              ),
            ),
          new Padding(padding: const EdgeInsets.only(top: 10.0),),
          new   TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "Enter the first number"), 
            controller: T1,
          ),
           new   TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "Enter the second number"),  
            controller: T2,
          ),
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
            child: new Text('+'),
            color: Colors.greenAccent,
            onPressed: doAdd,
              ),
                new MaterialButton(
            child: new Text('-'),
            color: Colors.greenAccent,
            onPressed: doSub,
              ),
              
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 15.0),),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                new MaterialButton(
            child: new Text('*'),
            color: Colors.greenAccent,
            onPressed: doMul,
              ),
                new MaterialButton(
            child: new Text('/'),
            color: Colors.greenAccent,
            onPressed: doDiv,
              ),
            ],
          ),
         new Padding(padding: const EdgeInsets.only(top: 10.0),),
         new Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 new MaterialButton(
                   child: new Text("CLEAR"),
                   color: Colors.greenAccent,
                   onPressed: doClear,
                 )
               ],
         ),

          ],
        ),
      ),
);

  }
}