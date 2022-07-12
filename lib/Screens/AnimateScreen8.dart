import 'package:flutter/material.dart';


class AnimateScreen8 extends StatelessWidget {
  const AnimateScreen8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Caramel Mocha")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('http://canadianhometrends.com/wp-content/uploads/2014/09/SaltedCaramelMochaFR.jpg'),
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
          child:Text("Espresso with bittersweet mocha sauce, caramel syrup and steamed milk, topped with sweetned whipped cream",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 290 | Grande 320 | Venti 335",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}