import 'package:flutter/material.dart';
import 'package:poc_application/controller/login_session/session_manager.dart';
import 'package:poc_application/snackbar.dart';
import 'package:poc_application/view/homepage.dart';

class LoginPage extends StatelessWidget {

    LoginPage({super.key});
    
  TextEditingController accessTokenController=TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Enter your access token',style: TextStyle(
              fontSize: 20
            ),),
          
            SizedBox(
              height: 16,
            ),
 
            Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Adjust this value for roundness
        color: Colors.grey[200], // Background color of the input box
      ),
      child: TextField(
        controller: accessTokenController,
        decoration: InputDecoration(
          hintText: 'Access Token',
          contentPadding: EdgeInsets.all(15.0), // Adjust padding as needed
          border: InputBorder.none, // Hide the default border
        ),
      ),
    ),
     SizedBox(
              height: 16,
            ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, 
        
        // Background color of the button
      ),
      onPressed: () {
        // Add your submit button logic here
          String token=accessTokenController.text.toString();
          if(token.isEmpty)
          {
                SnackBarModel(
      message: 'Empty',
      backgroundColor: Colors.red,
      onActionPressed: () {},
    ).showSnackBar(context);

          }
          else{
                SessionManager.saveAccessToken(token);
                    SnackBarModel(
      message: 'Login Successfully',
      backgroundColor: Colors.green,
      onActionPressed: () {},
    ).showSnackBar(context);

    Navigator.pushAndRemoveUntil(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => HomePage(),
                  transitionDuration: Duration(seconds: 0),
                ),(Route<dynamic> route) => false,
              );
          }
       
      },
      child: Text('Submit',style: TextStyle(
        color: Colors.white
      ),),
    )
            
           
          ],
        ),
      ),
    );
  }
}