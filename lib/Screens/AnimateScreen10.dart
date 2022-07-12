import 'package:flutter/material.dart';

class AnimateScreen10 extends StatelessWidget {
  const AnimateScreen10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Strawberry Frappuccino")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('https://i.pinimg.com/originals/34/e0/db/34e0dba304128b0a5e85ff930d31f49b.jpg'),
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
          child:Text("a blend of ice, milk and strawberry pure layered on top of a splash of strawberry and finished with vanilla whipped cream",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 280 | Grande 310 | Venti 335",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}