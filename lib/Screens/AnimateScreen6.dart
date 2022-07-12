import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class AnimateScreen6 extends StatelessWidget {
  const AnimateScreen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Caffe Americano")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('https://m.media-amazon.com/images/I/41qUj7FuNlL._AC_SY350_.jpg'),
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
          child:Text("Rich espresso with hot water",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 260 | Grande 280 | Venti 300",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}