import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:souq_computer/Momo/Screens/login_body/widget/login_body.dart';

class loginsceen extends StatefulWidget {

  @override
  State<loginsceen> createState() => _loginsceenState();
}

class _loginsceenState extends State<loginsceen> {
   LogIn({required String email , required String password}){
     if(email.isEmpty && password.isEmpty){
       print('email and password required');
     }
     else if(email.isEmpty){
       print('email is empty');
     }
     else if(password.isEmpty){
       print('password is empty');
     }
     else{
       print("$email / $password");     }

   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      //appBar: AppBar(
      //  title: Text(
      //    'SouqElcopmuter',
      //    style: TextStyle(fontSize: 25),
      //  ),
      //),
      body: LoginBody(login:  LogIn,),
    );
  }
}
