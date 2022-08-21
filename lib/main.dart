//import 'package:first_project/home_screen.dart';
//import 'package:first_project/login_screen.dart';
import 'package:first_project/messenger_screen.dart';
import 'package:flutter/material.dart';

void main()//محتاجة ويدجيت ف نحط myapp وو
{
  runApp(const MyApp());
//  Myapp app= Myapp();//object mn myapp we b save fe (my app)
 // Widget a=Myapp();//object mn myapp w b save fe (widget)
  //ال ماي ابب ينفع يكون كل دا
  //مش محتاج نسيف الاوبجيكت في فاريابلز
}
class MyApp extends StatelessWidget  //my app da widget 34an b extend mn widget
{
  const MyApp({Key? key}) : super(key: key);

//build استدعاء اوتوماتيك بعد الكونستراكتور
  // constructor استدعاء
  @override
  Widget build(BuildContext context)//method
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   MessengerScreen() ,

    ); //هتبقي في اول سكرينة دا كونستراكتور تبقي في اول سكرين  عشان يبقي معانا كل حاجة
  }

}

