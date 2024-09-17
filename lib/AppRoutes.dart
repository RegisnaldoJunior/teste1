import 'package:flutter/cupertino.dart';
import 'package:teste1/Pages/homePage.dart';
import 'package:teste1/Pages/loginPage.dart';
import 'package:teste1/Pages/signUpPage.dart';


class AppRoutes{
 static const homePage = '/homePage';
 //static const registerPersonPage = '/registerPersonPage';
 //static const listPersonPage = '/listPersonPage';
 //static const websitePage = '/websitePage';
 static const signUpPage = '/signUpPage';
 static const loginPage = '/loginPage';
 //static const forgotPage = '/forgotPage';

 Map<String, WidgetBuilder> define(){
   return {
     homePage: (BuildContext context) => HomePage(),
     //registerPersonPage: (BuildContext context) => RegisterPersonPage(),
     //listPersonPage: (BuildContext context) => ListPersonPage(),
     //websitePage: (BuildContext context) => WebsitePage(),
     signUpPage: (BuildContext context) => SignUpPage(),
     loginPage: (BuildContext context) => LoginPage(),
     //forgotPage: (BuildContext context) => ForgotPage(),
   };
 }
}