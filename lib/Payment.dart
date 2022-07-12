import 'package:flutter/material.dart';
import 'paymentScreens/cod.dart';
import 'paymentScreens/CardPay.dart';
import 'paymentScreens/NetBanking.dart';
import 'paymentScreens/UPI.dart';


class Payment_mode extends StatelessWidget {
  const Payment_mode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("MANAGE  PAYMENT  OPTIONS"),
        titleSpacing:0,
        ),

        body:ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
             ListTile(
                    leading:Icon(Icons.credit_card),
             title:Text("CARDS",style:TextStyle(fontSize:23)),
             subtitle:Text("debit card,credit card ",style:TextStyle(fontSize: 20)),
              trailing:Icon(Icons.arrow_forward_ios),

                onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return CardPAY();
                    }));
                 },
                   ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
            
             ListTile(
                    leading:Image(image: NetworkImage("https://zeevector.com/wp-content/uploads/Upi-Payment-Logo-white.png",),width:50,height:40),
             title:Text("UPI",style:TextStyle(fontSize:23)),
             subtitle:Text("Google pay,phone pay... ",style:TextStyle(fontSize: 20)),
                trailing:Icon(Icons.arrow_forward_ios),

                  onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return UPI();
                    }));
                 },
                   ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),

                   ListTile(
                    leading:Image(image: NetworkImage("https://thumbs.dreamstime.com/b/netbanking-icon-isolated-white-background-your-web-mobile-app-design-133860592.jpg")),
                  title:Text("NETBANKING",style:TextStyle(fontSize:22)),
                 trailing:Icon(Icons.arrow_forward_ios),
                   onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return NetBanking();
                    }));
                 },
                   ),
                   Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
               ListTile(
                    leading:Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/1554/1554401.png")),
                title:Text("CASH ON DELIVERY",style:TextStyle(fontSize:22)),
                 trailing:Icon(Icons.arrow_forward_ios),
                 onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                    return cod();
                    }));
                 },

                   ),
                    Divider(
                      height:30,
                      color: Color.fromARGB(248, 0, 0, 0),
                    ),
                  
          ]
        ),

            
      );
  }
}