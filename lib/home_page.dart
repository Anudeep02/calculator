import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1=0,num2=0,res=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }
  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }
  void doMult(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }
  void doDiv(){
      setState(() {
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        res = num1 ~/ num2;
    });
  }
  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      res=0;
    });
  }
  void doEq(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 + num2)*(num1 - num2);
    });
  }
  void doSubsq(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 - num2)*(num1 - num2);
    });
  }
  void doAddSq(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 + num2)*(num1 + num2);
    });
  }
  void doAddCub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 + num2)*(num1 + num2)*(num1 + num2);
    });
  }
  void doRem(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 % num2;
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.all(40.0),
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           Text("Calculator",
           style: TextStyle(
             fontSize: 50,
             color: Colors.blue[900],
             fontWeight: FontWeight.bold,
           ),),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
               labelText: "First Number",
             ),
             controller: t1,
           ),
             new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
                labelText: "Second Number",
             ),
             controller: t2,
           ),
           new Padding(
               padding:const EdgeInsets.only(top: 20.0), ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget> [
               new MaterialButton(
                 child: new Text("+"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doAddition();
                 },
               ),
               new MaterialButton(
                 child: new Text("-"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doSub();
                 },
               ),
               new MaterialButton(
                 child: new Text("*"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doMult();
                 },
               ),
             ],
           ),
           new Padding(
             padding:const EdgeInsets.only(top: 20.0), ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget> [
               new MaterialButton(
                 child: new Text("/"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doDiv();
                 },
               ),
               new MaterialButton(
                 child: new Text("%"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doRem();
                 },
               ),
               new MaterialButton(
                 child: new Text("(a+b)*(a+b*(a+b)"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doAddCub();
                 },
               ),
             ],
           ),
           new Padding(
             padding:const EdgeInsets.only(top: 20.0), ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget> [
               new MaterialButton(
                 child: new Text("(a+b)*(a-b)"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doEq();
                 },
               ),
               new MaterialButton(
                 child: new Text("(a-b)*(a-b)"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doSubsq();
                 },
               ),
               new MaterialButton(
                 child: new Text("(a+b)*(a+b)"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doAddSq();
                 },
               ),
             ],
           ),
           new Padding(
             padding:const EdgeInsets.only(top: 20.0), ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget> [
               new MaterialButton(
                 child: new Text("Clear"),
                 color: Colors.blue[100],
                 onPressed: (){
                   doClear();
                 },
               ),
             ],
           ),
           SizedBox(height: 20.0,),
           new Text("Answer: $res ",
             style: new TextStyle(
               fontSize: 20.0,
               fontWeight: FontWeight.bold,
               color: Colors.blue[900],
             ),
           ),
         ],
       ),
      ),
    );
  }
}