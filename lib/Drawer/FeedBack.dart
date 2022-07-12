import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
           body:SafeArea ( child:Column(
            children: [
              Padding(padding: EdgeInsets.all(20),child:
              Column(
                children:[
                 Text("Send Feedback \n",style:TextStyle(fontSize: 30)),
              
                  Text("Tell us what you love about the app or what we could be doing better.",style:TextStyle(fontSize: 23)),
                ]
              )
              ),
              
              SizedBox(
              height:20,
              ),
             Padding(padding: EdgeInsets.all(20.0),child:
               TextField(
                 
              decoration: InputDecoration(
                
               
                hintText: "Enter feedback",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                )
            ),
              ),

             SizedBox(
                height:20,

              ),
           ElevatedButton(onPressed: (){},
           child: Text('SUBMIT',style: TextStyle(fontSize: 25,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )


         
            

            ],
           )
          )
     );
  }
}