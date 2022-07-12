import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
class NetBanking extends StatefulWidget {
  const NetBanking({Key? key}) : super(key: key);

  @override
  State<NetBanking> createState() =>  _NetBankingState();
}

class  _NetBankingState extends State <NetBanking> {
  var state=["HDFC","Axis Bank","Union Bank","ICICI Bank","Kotak","IDBI Bank","YES Bank"];
  var firststate="HDFC";
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

       body:SafeArea(child:Center(child: 
         Column(children: [
          Container(
            margin:EdgeInsets.symmetric(vertical: 20),
            child:Text("Select Bank",style:TextStyle(fontSize:30,
            color:Color.fromARGB(255, 12, 0, 12)),)

            ,),
            DropdownButton(
              items: state.map((String dropDownItems){
                return DropdownMenuItem(child: 

                Text(dropDownItems,style:TextStyle(fontSize:20,
                color:(firststate==dropDownItems)?Color.fromARGB(255, 184, 16, 175):
                Colors.black),
                ),
                value:dropDownItems,
                );
              },
              ).toList(),
            onChanged: (String? newItem){
              setState(() {
                firststate=newItem!;
              });
             },
             value:firststate,
            ),
            SizedBox(
              height:20,
            ),

              ElevatedButton(onPressed: (){ }
          ,
           child: Text('Add Bank',style: TextStyle(fontSize: 25,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )

         ],
              ),
            )
            )
      )
         );
      }
}