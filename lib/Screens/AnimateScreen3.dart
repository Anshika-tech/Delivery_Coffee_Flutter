import 'package:flutter/material.dart';

class AnimateScreen3 extends StatelessWidget {
  const AnimateScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title:Text("Flat White")),
          body:
            Column(children:[
          Container(alignment:Alignment.topCenter,
           child:GestureDetector(
            child:Hero(
              tag:"imageAnimation",
              child:Image(image: NetworkImage('https://media.istockphoto.com/photos/latte-hot-coffee-in-a-cup-its-a-popular-drink-in-the-world-for-at-picture-id1065068246?k=20&m=1065068246&s=612x612&w=0&h=kXDRiGVmU7z86rDYYIKqam2pn9w6swBNJqmV_7El2FU='),
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
          child:Text("Expertly steamed milk poured over shots of espresso and finished with a Starbucks signature dot",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 90, 146),),textAlign: TextAlign.justify,),
           ),
           SizedBox(
            height:20,
          ),
          Text("tall 295 | Grande 290 | Venti 325",style: TextStyle(fontSize: 21,color:Color.fromARGB(255, 179, 16, 38),)),
             
            ]
            ) 
           ,


    );
  }
}