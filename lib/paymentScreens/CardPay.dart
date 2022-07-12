import 'package:flutter/material.dart';
class CardPAY extends StatelessWidget {
  const CardPAY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Scaffold(
          body:SafeArea(child:ListView(
            children: [
              Padding(padding: EdgeInsets.all(20.0),child: 
                  Text("Accept credit card, debit card, ATM card",style:TextStyle(fontSize: 20)),
              ),
                  SizedBox(height: 5,),
                  Padding(padding: EdgeInsets.all(20.0),child:
           TextField( 
              decoration: InputDecoration(
               labelText: "CARD NAME",
                hintText: "Enter name on card",
                labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                )
            ),
                  ),
            SizedBox(
              height:5,
            ),
             Padding(padding: EdgeInsets.all(20.0),child:
             TextField( 
              decoration: InputDecoration(
               labelText: "CARD NUMBER",
                hintText: "Enter card number",
                labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                )
            ),
             ),
            SizedBox(
              height:5,
            ),
              Padding(padding: EdgeInsets.all(20.0),child:
             TextField( 
              decoration: InputDecoration(
               labelText: "EXPIRY DATE",
                hintText: "(MM/YY)",
                labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                )
            ),
              ),
            SizedBox(
              height:5,
            ),

            Padding(padding: EdgeInsets.all(20),child:
             TextField( 
              decoration: InputDecoration(
               labelText: "CVV",
                //hintText: "Enter name on card",
                labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                )
            ),
            ),
            SizedBox(
              height:20,
            ),

              Padding(padding: EdgeInsets.all(50.0),child:
             ElevatedButton(onPressed: (){ }
          ,
           child: Text('Add Card',style: TextStyle(fontSize: 25,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )
              )
          ],

            
          )
          )
          );
         
  }
}
