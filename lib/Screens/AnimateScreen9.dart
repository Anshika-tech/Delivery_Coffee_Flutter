import 'package:flutter/material.dart';

class AnimateScreen9 extends StatelessWidget {
  const AnimateScreen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Vanilla Latte")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('https://media.istockphoto.com/photos/indispensable-drink-of-summer-days-cold-latte-next-to-chocolates-picture-id1173662628?k=20&m=1173662628&s=612x612&w=0&h=vysu49a7Hc7COto93hFQyVDkwzK4cw2Int4exJ18hRM='),
              height :400,
              width:400,
              ),
              
             ),
             onTap: (){
              Navigator.pop(context);
             },  
             ),
          ),

          SizedBox(
            height:20,
          ),
           Padding(padding: const EdgeInsets.all(20.0),
          child:Text("Rich espresso, vanilla flavoured syrup and creamy steamed milk",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 280 | Grande 305 | Venti 340",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}