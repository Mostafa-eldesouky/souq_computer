import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreenMostafa extends StatefulWidget {
  const LoginScreenMostafa({Key? key}) : super(key: key);

  @override
  State<LoginScreenMostafa> createState() => _LoginScreenMostafaState();
}

class _LoginScreenMostafaState extends State<LoginScreenMostafa> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? errorEmail,errorPass;

  bool Hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Stack(

        children: [
          Image.asset(
            'assets/blue_background.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(

              padding: const EdgeInsets.all(20.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                    Text(
                      'LogIn',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    controller: emailController,

                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ,),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorText: errorEmail,
                      errorStyle: TextStyle(color: Colors.yellowAccent , fontWeight:  FontWeight.w700),
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white ,width: 1 )
                      ),
                      focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white ,width: 2 )
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.yellowAccent ,width: 2 )
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white ,width: 2 )
                      ),
                      focusColor: Colors.white,
                      labelText: 'Enter Your Email',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: Hide,
                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ,),
                    decoration: InputDecoration(
                      errorText: errorPass,
                      errorStyle: TextStyle(color: Colors.yellowAccent),
                      suffixIcon: IconButton(
                        icon: Icon(
                         Hide ? Icons.remove_red_eye : Icons.visibility_off,
                          color: Colors.white,
                        ), onPressed: () {
                          setState(() {
                            Hide = !Hide ;
                          });
                      },
                      ),
                      prefixIcon:  Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white ,width: 2 )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white ,width: 2 )
                      ),
                     errorBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(color: Colors.yellowAccent ,width: 2 )
                     ),
                     focusedErrorBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(color: Colors.white ,width: 2 )
                     ),
                     labelText:'Enter Your Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if(emailController.text.isEmpty&& passController.text.isEmpty){
                        setState(() {
                          errorEmail ='Enter Your Email';
                          errorPass ='Enter Your Password';
                        });
                      }else if(emailController.text.isEmpty){
                        setState(() {
                          errorEmail = 'Please Enter Your Email';
                          errorPass = null;
                        });
                      }else if (passController.text.isEmpty){
                        setState(() {
                          errorPass ='Please Enter Your Password';
                          errorEmail =null;
                        });
                      }else if(passController.text.length<6){
                        setState(() {
                          errorPass = 'Password Must Be More Than 6 Characters';
                          errorEmail = null;
                        });
                      }else{
                        setState(() {
                          errorPass = null;
                          errorEmail = null ;
                        });
                      }
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration:  BoxDecoration(
                          color: Colors.indigo,
                          border: Border.all(
                            width: 3,
                            style: BorderStyle.solid,
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('assets/blue_background.jpg' ) , fit: BoxFit.cover)
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t Have Acount? ',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),
                      ),
                      InkWell( splashColor: Colors.red,onTap:(){},child: Text('Register Now ..!' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
