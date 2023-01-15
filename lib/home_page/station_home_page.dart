import 'package:flutter/material.dart';



class StationHomePage extends StatefulWidget {
  const StationHomePage({Key? key}) : super(key: key);

  @override
  State<StationHomePage> createState() => _StationHomePageState();
}

class _StationHomePageState extends State<StationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("station homepage",
        ),
      ),
      body:Center(
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
                        text: const TextSpan(
                          text: 'Petrol : ',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                          children: <TextSpan>[
                            TextSpan(text: '100 Liters', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                            ],
                  ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5722)
                ),
                onPressed: (){

                },
                child:const Text('Add petrol data'),
              ),
              const SizedBox(height:25),
              Row(
                children:  [
                  RichText(
                    text: const TextSpan(
                      text: 'Diesel : ',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(text: '100 Liters', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height:25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5722)
                ),
                onPressed: (){

                },
                child:const Text('Add Diesel data'),
              ),
              const SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Enter Que Length',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                ],
              ),
              SizedBox(height:20),
              Row(children:[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF5722)
                  ),
                  onPressed: (){

                  },
                  child:const Text('Enter que length'),
                ),
              ]),
                ],
          ),),
        ),
      ),
    );
  }
}
