import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
             appBar: AppBar(title:Text("Profile",style:TextStyle(fontSize: 20))),
             body:SafeArea(child: 
             Center(child:
             ListView(
              children: [
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzcTlwLwOT7sHfDuRnw4y8T2UznQ0sK2WaZhW-RgFb7F_FZxVblZ1eHhZQ69YO7MYHO8&usqp=CAU"),height:200,width:200),
                Padding(padding: EdgeInsets.only(left:50),child:
                Text("Anshika Srivastava",style:TextStyle(fontSize: 30)),),
                SizedBox(height:20),
                Padding(padding: EdgeInsets.only(left: 20),child:
                Text("GMAIL-",style:TextStyle(fontSize: 23),)
                ),
                Padding(padding: EdgeInsets.only(left:20),child:
                Text("srivastavanshika10@gmail.com",style:TextStyle(fontSize: 20)),),
              ],
             )
             )
             )

      );
  }
}