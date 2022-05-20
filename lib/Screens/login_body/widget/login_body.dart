import 'package:flutter/material.dart';
class LoginBody extends StatelessWidget {
  Function({required String email , required String password}) login;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  LoginBody({Key? key , required this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 20,fontWeight:FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'enter your email',
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,

                ),
                  border: OutlineInputBorder(),
                  labelText: 'enter your password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(

              onTap: (){
login(email: emailController.text,password: passController.text);
              },
              child: Container(height: 60,width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),),
            )
          ],
        ),
      ),
    );
  }
}
