import 'package:flutter/material.dart';
import 'package:souq_computer/Mostafa/login_screen_mostafa.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

  // This widgetCustom is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreenMostafa(),
    );
  }
}


//void main() {
//
//   runApp(MyApp());
// }
// //statless wadjet
// //statfullwidjit
//
// class MyApp extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( home:BmiScreen(),
//
//     );
//
//   }
// }
