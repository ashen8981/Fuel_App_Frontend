import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class StationHomePage extends StatefulWidget {
  const StationHomePage({Key? key}) : super(key: key);

  @override
  State<StationHomePage> createState() => _StationHomePageState();
}

class _StationHomePageState extends State<StationHomePage> {
  // final formkey = GlobalKey<FormState>();

  String queLength = "";
  String petrolStock = "";
  String dieselStock = "";

  final queController = TextEditingController();
  final petrolController = TextEditingController();
  final dieselController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("station homepage",
        ),
      ),
      body:Center(
        // key: formkey,
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children:  [
              const SizedBox(height: 20),
              const Text('Homagama Fuel Station',
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
                // onChanged: (val){
                //   setState(() {
                //     dieselStock = val;
                //   });
                // },
                // validator: (val){
                //   if(val!.isNotEmpty){
                //     return null;
                //   }else{
                //     return "Diesel storage field can't empty";
                //   }
                // },
              ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5722)
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
                        TextSpan(text: petrolStock, style: TextStyle(fontWeight: FontWeight.bold)),
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
                // onChanged: (val){
                //   setState(() {
                //     petrolStock = val;
                //   });
                // },
                // validator: (val){
                //   if(val!.isNotEmpty){
                //     return null;
                //   }else{
                //     return "Petrol storage field can't empty";
                //   }
                // },
              ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5722)
                ),
                onPressed:  _petrol,
                child:const Text('Add Petrol data'),
              ),
              const SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text("Que length : $queLength",
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                ],
              ),
              const SizedBox(height:20),
              TextFormField(
                controller: queController,
                decoration: textInputDecoration.copyWith(
                  labelText: "Enter the que length",
                  prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xFFFF5722),),
                ),
                // onChanged: (val){
                //   setState(() {
                //     queLength  = val;
                //   });
                // },
                // validator: (val){
                //   if(val!.isNotEmpty){
                //     return null;
                //   }else{
                //     return "Que length cannot be empty";
                //   }
                // },
              ),
              const SizedBox(height:20),
              Row(children:[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFF5722)
                  ),
                  onPressed: _setQue,
                  child:const Text('Enter que length'),
                ),
              ]),
            ],
          ),),
        ),
      ),
    );
  }
  void _setQue(){
    setState(() {
      queLength=queController.text;
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
