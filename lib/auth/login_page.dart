
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/auth/register_page.dart';
import 'package:lottie/lottie.dart';
import '../home_page/station_home_page.dart';
import '../home_page/_search_home_page.dart';
import '../widgets/widgets.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String RegNum = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        backgroundColor: Color(0xFFFFF3E0),
        body:  Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 100,),
                  Lottie.network('https://assets8.lottiefiles.com/packages/lf20_PS7mA8szhY.json',
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
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFF5722)
                    ),
                    onPressed: (){
                      loginUser();
                    },
                    child: const Text('Log In as an User'),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFF5722)
                    ),
                    onPressed: (){
                      loginStaion();
                    },
                    child: const Text('Log In as a Station'),
                  ),
                  const SizedBox(height: 10,),
                  Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      children: <TextSpan>[
                        TextSpan(
                            text: "Register here",
                            style: const TextStyle(color: Colors.blueAccent),
                            recognizer: TapGestureRecognizer()..onTap=(){
                              nextScreen(context, RegisterPage());
                            }
                        )
                      ]
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  loginUser() async{
    if (formkey.currentState!.validate()){
      setState(() {

        nextScreen(context, SearchPage());
      });
    }
  }

  loginStaion() async{
    if (formkey.currentState!.validate()){
      setState(() {

        nextScreen(context, StationHomePage());
      });
    }
  }
}



