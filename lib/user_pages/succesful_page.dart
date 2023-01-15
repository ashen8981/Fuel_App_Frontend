import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfulPage extends StatefulWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

  @override
  _SuccessfulPageState createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Confirm details"),
        backgroundColor: const Color(0xFFFF5722),
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xFFFFF3E0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Text('Successfully added your details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.green),),
              const SizedBox(height: 80,),
              Lottie.network('https://assets2.lottiefiles.com/packages/lf20_wrdcwlyb.json',
                width: 800,
                fit: BoxFit.fill,),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.2,
                          blurRadius: 5,
                          offset: const Offset(0.0, 5.0)
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text('Exit with Fuel', style: TextStyle(fontSize: 22.0),),
                        const SizedBox(width: 65,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green
                            ),
                            onPressed: (){},
                            child: const Icon(Icons.check_box))
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Exit without Fuel', style: TextStyle(fontSize: 22.0),),
                        const SizedBox(width: 30,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent
                            ),
                            onPressed: (){},
                            child: const Icon(Icons.cancel_rounded))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}