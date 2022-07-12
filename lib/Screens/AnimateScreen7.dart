import 'package:flutter/material.dart';



class AnimateScreen7 extends StatelessWidget {
  const AnimateScreen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Cold Brew Black")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('https://www.tastingtable.com/img/gallery/why-you-shouldnt-sweeten-your-cold-brew-with-granulated-sugar/l-intro-1650483217.jpg'),
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
          child:Text("Starbucks Kenya coffee is freshly ground and then sleeped for 48 hr, and served over ice, unsweetened",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 275 | Grande 305 | Venti 335",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}