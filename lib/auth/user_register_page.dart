import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home_page/_search_home_page.dart';
import '../widgets/widgets.dart';
import 'login_page.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  final formkey = GlobalKey<FormState>();

  String fullName = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFFF3E0),
          body: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40,),
                    Lottie.network('https://assets2.lottiefiles.com/packages/lf20_goeb1fbr.json',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,),
                    const SizedBox(height: 50),
                    const Text('Welcome to the FuelApp',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),),
                    const SizedBox(height: 3,),
                    const Text('Get Connect with Us',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),),
                    const SizedBox(height: 35,),


                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: "User Name",
                        prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          fullName = val;
                        });
                      },
                      validator: (val){
                        if(val!.isNotEmpty){
                          return null;
                        }else{
                          return "Full name cannot be empty";
                        }
                      },
                    ),
                    const SizedBox(height: 20,),


                    TextFormField(
                      decoration:textInputDecoration.copyWith (
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.mail, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          email = val;
                        });
                      },
                      validator: (val){
                        return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ? null: "Please enter a valid email";
                      },
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFFFF5722),),
                      ),
                      validator: (val){
                        if(val!.length <6){
                          return "Password must be at least 6 characters";
                        }else{
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(
                        labelText: "Confirm Password",
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFFFF5722),),
                      ),
                      validator: (val){
                        if(val!.length <6){
                          return "Password must be at least 6 characters";
                        }else{
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    const SizedBox(height: 10,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF5722)
                      ),
                      onPressed: (){
                        userRegister();
                      },
                      child: const Text('Register as a User'),
                    ),
                    const SizedBox(height: 10,),
                    Text.rich(TextSpan(
                        text: "Don't have an account? ",
                        children: <TextSpan>[
                          TextSpan(
                              text: "Login here",
                              style: const TextStyle(color: Colors.blueAccent),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                nextScreen(context, LoginPage());
                              }
                          )
                        ]
                    )),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  userRegister()async{
    if (formkey.currentState!.validate()){
      setState(() {
        nextScreen(context, SearchPage());
      });
    }
  }

}

