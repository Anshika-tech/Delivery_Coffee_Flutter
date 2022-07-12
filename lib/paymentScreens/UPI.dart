import 'package:flutter/material.dart';
class UPI extends StatelessWidget {
  const UPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Scaffold(
          body:Column(
            children: [
              Padding(padding: EdgeInsets.only(top:50)),
              Text("UPI ",style:TextStyle(fontSize: 30)),
              SizedBox(
                height:10,

              ),
              Padding(padding: EdgeInsets.all(20.0),child:
               TextField(
                 
              decoration: InputDecoration(
                
               
                hintText: "ENTER UPI ID",
                labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                )
            ),

              ),

               ElevatedButton(onPressed: (){},
          
           child: Text('Make Payment',style: TextStyle(fontSize: 25,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )

               
            

            ],
          )
        
          );
         
  }
}