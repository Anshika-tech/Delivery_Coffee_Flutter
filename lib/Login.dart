import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_application_2/Menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _secureText = true;
   String? _EmailError=null;
  TextEditingController _EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(child: Padding(padding: 
      const EdgeInsets.all(20.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("LOGIN",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           SizedBox(
            height:30,
          ),
          TextFormField(
            controller:_EmailController,
            keyboardType:TextInputType.emailAddress,
             decoration: InputDecoration(
                errorText: _EmailError,
                labelText: "Email",
                hintText: "Enter your Email",
                labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),

                ),
               
              ),
           onChanged: (val){
            validateEmail(val);
           },

          ),
          SizedBox(
            height:20,
          ),
         TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                    icon: Icon(
                      _secureText ? Icons.remove_red_eye : Icons.security,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              // keyboardType: TextInputType.emailAddress,
              obscureText: _secureText,
            ),
             SizedBox(
            height:20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyTabBar();

          }));
          },
           child: Text('SIGN IN',style: TextStyle(fontSize: 25,color:Colors.black),),
            style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
           )
       
      ],)
      )
      )
    );

    
  }

  void validateEmail(String val) {
    if(val.isEmpty){
  setState(() {
    _EmailError = "Email can not be empty";
  });
    }else if(!EmailValidator.validate(val, true)){
      setState(() {
        _EmailError = "Invalid Email Address";
      });
    }else{
      setState(() {

        _EmailError = "";
      });
    }
  }
}