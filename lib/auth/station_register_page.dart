import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/home_page/station_home_page.dart';
import 'package:lottie/lottie.dart';

import '../widgets/widgets.dart';
import 'login_page.dart';

class StationRegisterScreen extends StatefulWidget {
  const StationRegisterScreen({Key? key}) : super(key: key);

  @override
  State<StationRegisterScreen> createState() => _StationRegisterScreenState();
}

class _StationRegisterScreenState extends State<StationRegisterScreen> {
final formkey = GlobalKey<FormState>();

String fullName = "";
String stationName = "";
String regNum = "";
String district="";
String city="";
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
                    const SizedBox(height: 50,),
                    Lottie.network('https://assets3.lottiefiles.com/packages/lf20_zqojwy4n.json',
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
                        labelText: "Station Name",
                        prefixIcon: const Icon(Icons.ev_station, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          stationName = val;
                        });
                      },
                      validator: (val){
                        if(val!.isNotEmpty){
                          return null;
                        }else{
                          return "Station Name cannot be empty";
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: "Station Register Number",
                        prefixIcon: const Icon(Icons.app_registration, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          regNum = val;
                        });
                      },
                      validator: (val){
                        if(val!.isNotEmpty){
                          return null;
                        }else{
                          return "Register Number cannot be empty";
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: "Enter District",
                        prefixIcon: const Icon(Icons.text_fields_outlined, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          district = val;
                        });
                      },
                      validator: (val){
                        if(val!.isNotEmpty){
                          return null;
                        }else{
                          return "District cannot be empty";
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: "Enter City",
                        prefixIcon: const Icon(Icons.text_fields_sharp, color: Color(0xFFFF5722),),
                      ),
                      onChanged: (val){
                        setState(() {
                          city = val;
                        });
                      },
                      validator: (val){
                        if(val!.isNotEmpty){
                          return null;
                        }else{
                          return "City cannot be empty";
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
                          return "Password must be at least 6 charactors";
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
                          return "Password must be at least 6 charactors";
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
                        StationRegister();
                      },
                      child: Text('Register as a Staion'),
                    ),
                    const SizedBox(height: 10,),
                    Text.rich(TextSpan(
                        text: "Don't have an account? ",
                        children: <TextSpan>[
                          TextSpan(
                              text: "Login here",
                              style: TextStyle(color: Colors.blueAccent),
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
StationRegister()async{
  if (formkey.currentState!.validate()){
    setState(() {
      nextScreen(context, StationHomePage());
    });
  }
}
}
