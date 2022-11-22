import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  bool p1=false;
  bool p2=false;
  bool p3=false;
  int amount=0;
  StringBuffer stringBuffer=StringBuffer();
  String str="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox",style: TextStyle(fontSize: 25,color: Colors.red),),),
      body: Column(
        children: [
          CheckboxListTile(title: Text("Mouse pr:250",style: TextStyle(fontSize: 20)),onChanged: (value) {
            setState(() {
              print(value);
              p1=value!;
              if(p1==true)
              {
                amount = amount + 250;
              }
              else
              {
                amount = amount - 250;
              }
            });
          },value: p1,),
          CheckboxListTile(title: Text("keyboard pr:300",style: TextStyle(fontSize: 20)),onChanged: (value) {
            print(value);
            setState(() {
              p2=value!;
              if(p2==true)
              {
                amount = amount + 300;
              }
              else
              {
                amount = amount - 300;
              }
            });
          },value: p2,),
          CheckboxListTile(title: Text("pendrive pr:450",style: TextStyle(fontSize: 20)),onChanged: (value) {
            print(value);
            setState(() {
              p3=value!;
              if(p3==true)
              {
                amount = amount + 450;
              }
              else
              {
                amount = amount - 450;
              }
            });
          },value: p3,),

          SizedBox(height: 30),

          Text("total Price : ${amount}",style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }
}
