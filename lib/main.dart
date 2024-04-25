import 'package:flutter/material.dart';
import 'package:poc_application/controller/login_session/session_manager.dart';
import 'package:poc_application/view/homepage.dart';
import 'package:poc_application/view/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  bool? isLogin,isLoading=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      getAccessToken();
  }
  void getAccessToken()async{
    final token = await  SessionManager.getAccessToken();

    if(token!='null')
    {
      setState(() {
        isLoading=false;
        isLogin=true;
      });
      return;
    }
    setState(() {
      isLogin=false;
      isLoading=false;

    });

  }
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Stock Pathsala Poc',
        debugShowCheckedModeBanner: false,
        home: isLoading!?
        Scaffold(

          body: Center(
            child: CircularProgressIndicator(),
          ),
        ):
        
        isLogin!? HomePage():LoginPage(),
      );
  }
}
 
 