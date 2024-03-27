import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  
  
  LoginPage({super.key});


  void login() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,),

            SizedBox(height: 20,),

            Text(
              'Welcome back',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),),

            SizedBox(height: 20,),

            CustomTextField(
              hintText: 'Email',
              horizontalPadding: 25.0,
              controller: _mailController,),

            SizedBox(height: 20,),

            CustomTextField(
              hintText: 'Password',
              horizontalPadding: 25.0,
              obscureText: true,
              controller: _pwController,),

            SizedBox(height: 20,),

            CustomButton(
              text: "Login",
              ontap: login,),
            
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ", 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  "Register now!", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}