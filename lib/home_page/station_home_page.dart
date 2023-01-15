import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class StationHomePage extends StatefulWidget {
  const StationHomePage({Key? key}) : super(key: key);

  @override
  State<StationHomePage> createState() => _StationHomePageState();
}

class _StationHomePageState extends State<StationHomePage> {
  // final formkey = GlobalKey<FormState>();

  String queLength1 = "";
  String queLength2 = "";
  String petrolStock = "";
  String dieselStock = "";

  final que1Controller = TextEditingController();
  final que2Controller = TextEditingController();
  final petrolController = TextEditingController();
  final dieselController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722),
        title: const Text("Fuel station homepage",
        ),
      ),
      body:Center(
        // key: formkey,
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children:  [
              const SizedBox(height: 20),
              const Text('Ratnapura Fuel Station',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),),
              const SizedBox(height:50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Fuel Availability',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                  SizedBox(height:20),

                ],
              ),
              const SizedBox(height:25),
                  Row(
                    children:  [
                      RichText(
                        text:  TextSpan(
                          text: 'Diesel : ',
                          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                          children: <TextSpan>[
                            TextSpan(text: dieselStock, style: const TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                            ],
                  ),
              const SizedBox(height:25),
              TextFormField(
                controller: dieselController,
                decoration: textInputDecoration.copyWith(
                  labelText: "Diesel storage",
                  prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                ),

              ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF5722)
                ),
                onPressed: _diesel,
                child:const Text('Add Diesel data'),
              ),
              const SizedBox(height:25),
              Row(
                children:  [
                  RichText(
                    text:  TextSpan(
                      text: 'Petrol : ',
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(text: petrolStock, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height:25),
              TextFormField(
                controller: petrolController,
                decoration: textInputDecoration.copyWith(
                  labelText: "Petrol storage",
                  prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                ),

              ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF5722)
                ),
                onPressed:  _petrol,
                child:const Text('Add Petrol data'),
              ),
              const SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text("Petrol Que length : $queLength1",
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                ],
              ),
              const SizedBox(height:20),
              TextFormField(
                controller: que1Controller,
                decoration: textInputDecoration.copyWith(
                  labelText: "Enter the petrol que length",
                  prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                ),

              ),
              const SizedBox(height:20),
              Row(children:[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFF5722)
                  ),
                  onPressed: _setQue1,
                  child:const Text('Enter the petrol que length'),
                ),
              ]),
              const SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text("Diesel Que length : $queLength2",
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                ],
              ),
              const SizedBox(height:20),
              TextFormField(
                controller: que2Controller,
                decoration: textInputDecoration.copyWith(
                  labelText: "Enter the diesel que length",
                  prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                ),

              ),
              const SizedBox(height:20),
              Row(children:[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFF5722)
                  ),
                  onPressed: _setQue2,
                  child:const Text('Enter the diesel que length'),
                ),

              ]),
              const SizedBox(height:50),
            ],
          ),),
        ),
      ),
    );
  }
  void _setQue1(){
    setState(() {
      queLength1=que1Controller.text;
    });
  }
  void _setQue2(){
    setState(() {
      queLength2=que2Controller.text;
    });
  }

  void _petrol(){
    setState(() {
      petrolStock=petrolController.text;
    });
  }
  void _diesel(){
    setState(() {
      dieselStock=dieselController.text;
    });
  }
}
