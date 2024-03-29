import 'package:flutter/material.dart';
import 'package:fuel_app/auth/station_register_page.dart';
import 'package:fuel_app/auth/user_register_page.dart';
import 'package:fuel_app/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network('https://assets5.lottiefiles.com/packages/lf20_u8o7BL.json',
              fit: BoxFit.fill,),
            const SizedBox(height: 50,),

            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                nextScreen(context, UserRegistrationScreen());
              },
              child: const Text('User Registration?',style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight:FontWeight.bold,
                  fontSize: 30),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                nextScreen(context, StationRegisterScreen(
                ));
              },
              child: const Text('Station Registration?',style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight:FontWeight.bold,
                  fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}
