// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Drawer/Account.dart';
import 'package:flutter_application_2/Payment.dart';
import 'package:flutter_application_2/Screens/AnimateScreen1.dart';
import 'Screens/AnimateScreen2.dart';
import 'Screens/AnimateScreen3.dart';
import 'Screens/AnimateScreen4.dart';
import 'Screens/AnimateScreen5.dart';
import 'Screens/AnimateScreen6.dart';
import 'Screens/AnimateScreen7.dart';
import 'Screens/AnimateScreen8.dart';
import 'Screens/AnimateScreen9.dart';
import 'Screens/AnimateScreen10.dart';
import 'order.dart';
import 'welcome.dart';
import 'Drawer/FeedBack.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
            child: ListView(children:[
              Padding(padding: EdgeInsets.only(top:20)),
              ListTile(
                  
                    leading: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzcTlwLwOT7sHfDuRnw4y8T2UznQ0sK2WaZhW-RgFb7F_FZxVblZ1eHhZQ69YO7MYHO8&usqp=CAU")),
                    title: Text("ACCOUNTS",style: TextStyle(fontSize: 20),),
                   trailing:Icon(Icons.arrow_forward_ios),
                      onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Account();
                    }));
                 },

                  ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
             ListTile(
                  
                  title: Text("PAYMENT OPTIONS",style: TextStyle(fontSize: 17),),
                   trailing:Icon(Icons.arrow_forward_ios),

                     onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Payment_mode();
                    }));
                 },
                  ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
            
             ListTile(
                
                    title: Text("HISTORY",style: TextStyle(fontSize: 17),),
                   trailing:Icon(Icons.arrow_forward_ios),
                  ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),

              ListTile(
                
                    title: Text("FEEDBACK",style: TextStyle(fontSize: 17),),
                   trailing:Icon(Icons.arrow_forward_ios),

                    onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return FeedBack();
                    }));
                 },
                  ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
              ListTile(
                
                    title: Text("LOG OUT",style: TextStyle(fontSize: 17),),
                   trailing:Icon(Icons.arrow_forward_ios),

                    onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return welcome();
                    }));
                 },
                  ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
        
            ],
            ),
        ),
                
      appBar: AppBar(
     
     leading:Icon(Icons.location_on),
     titleSpacing:0,
      title:Text("Current Location"),
      ) ,          
    
    
     body:DefaultTabController(
      length:3,
      child:Column(
        children: [
          Container(
            child:TabBar(
              labelColor:Colors.black,
              indicatorColor:Colors.red,
            tabs: [
              Tab(text:"Menu",),

              Tab(text:"Reviews"),

              Tab(text:"Photos"),

            ]
            
            )
          ),
         Expanded(child: 
         Container(
          child:TabBarView(children:
          [
              ListView(
                children: [
                   Container(
                  color:Color.fromARGB(255, 199, 53, 224),
                  padding:EdgeInsets.all(10),
                  child:Text("MENU",style:TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
                   ),
                   SizedBox(
                    height: 20,
                   ),
                   //1st item
                   ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://media-cdn.tripadvisor.com/media/photo-p/0d/a9/ec/4a/caramel-java-chip-frappuccino.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen1();
                    }));
                 },
             
             ),
                    
             title:Text("Java chip Frappuccino",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Coffee,chocolaty chips",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
            //2nd item 
              ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://www.seriouseats.com/thmb/8MBQQ3KUKhlGwwRUlPuuoR-9c7Q=/1500x1125/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2018__06__20180613-coffee-vs-espresso-vicky-wasik-3-1500x1125-418fa2a14e7249b18040c2c34bf8569c.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen2();
                    }));
                 },
             
             ),
             title:Text("Espresso",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Espresso and milk ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
             //3 item
                ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://media.istockphoto.com/photos/latte-hot-coffee-in-a-cup-its-a-popular-drink-in-the-world-for-at-picture-id1065068246?k=20&m=1065068246&s=612x612&w=0&h=kXDRiGVmU7z86rDYYIKqam2pn9w6swBNJqmV_7El2FU='),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen3();
                    }));
                 },
             
             ),
             title:Text("Flat White",style:TextStyle(fontSize: 25,)),
             subtitle:Text("steamed milk ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
                 //4th item
                 ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaXWrxXFR773asXVHv7i5vpu2Xa-aFBes7r5g6C7eXMjHH8ieaiicqjeyK1XlDQFd51eo&usqp=CAU'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen4();
                    }));
                 },
             
             ),
             title:Text("Signature Hot Chocolate",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Four cocoas and milk ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
                  //Fifth item 
                ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://i.pinimg.com/originals/05/d4/85/05d48515bed6ff2986f134c28313a12e.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen5();
                    }));
                 },
             
             ),
             title:Text("Cappuccino",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Rich espresso ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
                //sixth item
                 ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://m.media-amazon.com/images/I/41qUj7FuNlL._AC_SY350_.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen6();
                    }));
                 },
             
             ),
             title:Text("Caffe Americano",style:TextStyle(fontSize: 25,)),
             subtitle:Text("espresso, hot water ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),

                //seventh item
                 ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://www.tastingtable.com/img/gallery/why-you-shouldnt-sweeten-your-cold-brew-with-granulated-sugar/l-intro-1650483217.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen7();
                    }));
                 },
             
             ),
             title:Text("Cold Brew Black",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Starbucks kenya coffee ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),

               //Eight item
                 ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('http://canadianhometrends.com/wp-content/uploads/2014/09/SaltedCaramelMochaFR.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen8();
                    }));
                 },
             
             ),
             title:Text("Caramel Mocha",style:TextStyle(fontSize: 25,)),
             subtitle:Text("Mocha sauce,caramel syrup ",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),

                  //Ninth item 
                    ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://media.istockphoto.com/photos/indispensable-drink-of-summer-days-cold-latte-next-to-chocolates-picture-id1173662628?k=20&m=1173662628&s=612x612&w=0&h=vysu49a7Hc7COto93hFQyVDkwzK4cw2Int4exJ18hRM='),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen9();
                    }));
                 },
             
             ),
             title:Text("Vanilla Latte",style:TextStyle(fontSize: 25,)),
             subtitle:Text("vanilla syrup",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),

                //Tenth item
                   ListTile(
                    leading:GestureDetector(
                     child:Hero(
                          tag:"imageAnimation",
                        child:Image(image:NetworkImage('https://i.pinimg.com/originals/34/e0/db/34e0dba304128b0a5e85ff930d31f49b.jpg'),
                      height :120,
                     width:90,
               
              )
             ),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context){
                    return AnimateScreen10();
                    }));
                 },
             
             ),
             title:Text("Strawberry Frappuccino",style:TextStyle(fontSize: 25,)),
             subtitle:Text("ice,milk, strawberry puree",style:TextStyle(fontSize: 20)),
                   ),
                   Divider(
                      height:20,
                      color: Color.fromARGB(248, 0, 0, 0),
                     ),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Order();
           },));
           },
            child: Text("GO FOR ORDER",style: TextStyle(fontSize: 25,color: Colors.black),),
                 style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
                )
                ],

              ),
               //Review Section
              Center(child: 
                Column(children: [
                  Padding(padding: EdgeInsets.only(top:15)),
                  Text("RATING",style: TextStyle(fontSize: 22),),
                  SizedBox(
                    height: 10,
                  ),
                    RatingBar.builder(
               initialRating: 3,
                 minRating: 1,
                   direction: Axis.horizontal,
                 allowHalfRating: true,
                     itemCount: 5,
                   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                   Icons.star,
              color: Colors.amber,
                ),
               onRatingUpdate: (rating) {
                  print(rating);
              },
           ),

            SizedBox(
              height:5,
            ),
             Padding(padding: EdgeInsets.all(20.0),child:
             TextField( 
              decoration: InputDecoration(
                hintText: "Write Review",
                labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                )
            ),
             ),
             SizedBox(
                height:20,

              ),
           ElevatedButton(onPressed: (){},
           child: Text('SUBMIT',style: TextStyle(fontSize: 23,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )


                ],)
              ,),



              //photos section
              Center(child:
              ListView(
                children: [
                
                  Row(
                   children: [
                      Image(image: NetworkImage("https://images.pexels.com/photos/2374794/pexels-photo-2374794.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",),height: 220,width:180),
                      
                      Image(image: NetworkImage("https://images.wsj.net/im-529220/12S"),height:180,width:170),
                      
                    ],
                  ),
                
                   
                   Expanded(child: Row(
                    children: [
                      Image(image: NetworkImage("https://parade.com/.image/t_share/MTkwNjg3NzU1MDcwNjEzMzcy/starbucks-introduces-new-line-of-iced-beverages.jpg",),height:170,width:160),
                      SizedBox(width:10),
                      Image(image: NetworkImage("https://media.istockphoto.com/photos/starbucks-coffee-sign-hanging-outside-a-shop-picture-id458641929?k=20&m=458641929&s=612x612&w=0&h=vmCyFj9-ewUHhKMZ8hhuXVv9GgP1rfQX6rKLxdOQmGI="),height:150,width:170),
                    ],
                  ))
                  
                ],
              )
              ,),
           
          ]
          )
          ,)
          )
          
        ],
      )
     )

    );
    
  }
}