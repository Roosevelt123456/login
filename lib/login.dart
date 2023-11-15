


import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_textfield.dart';
import 'package:login/components/square.dart';

class login_page extends StatelessWidget {
  login_page({super.key});
  //text editing controllers
  final usernameController= TextEditingController();
  final passwordController= TextEditingController();

   //sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:50,),

              //logo
              Icon(Icons.lock,
              size: 100,),
              SizedBox(height: 50,),
              Text("Welcome back you\ 've been missed",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),),
              SizedBox(height: 25,),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 20,),

              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                    style: TextStyle(color: Colors.grey[600]),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 8.5,
                      color: Colors.grey[200],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or Continue with",
                      style: TextStyle(color: Colors.grey[700]),),
                    ),
                    Expanded(child: Divider(
                      thickness: 5.5,
                      color: Colors.grey[200],
                    )),
                  ],
                ),
              ),
              SizedBox(height: 40,),
                           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png',

                  ),
                  SizedBox(width:20,),

                  SquareTile(imagePath: 'lib/images/apple.jpg'),
                ],
              ),
              SizedBox(height: 20,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                  style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),

                  Text("Register Now",
                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),),


                ],
              ),





            ],
          ),
        ),
      ),
    );
  }
}
