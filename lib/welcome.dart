import 'package:flutter/material.dart';
import 'package:flutter_application_2/Login.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text("COFFEE HOUSE",style:TextStyle(fontSize: 40)),
           SizedBox(
            height:50,
           ),
           
           Text("WANT SOME COFFEE?",style:TextStyle(fontSize: 28,color:Color.fromARGB(255, 165, 19, 153))),
           
           SizedBox(
            height:20,
           ),

           ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
           },
                ));
           },
            child: Text("YES",style: TextStyle(fontSize: 24,color:Colors.black,fontStyle:FontStyle.italic ),),
             style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
            ),
           SizedBox(
            height:25,
           ),

           Image(image: NetworkImage("https://png.pngtree.com/png-vector/20201009/ourlarge/pngtree-cute-coffee-smile-png-image_2359742.jpg"))

        ],
      )
      )
      ,);
  }
}