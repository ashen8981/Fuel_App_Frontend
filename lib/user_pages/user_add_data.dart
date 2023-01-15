import 'package:flutter/material.dart';

class UserAddData extends StatefulWidget {
  const UserAddData({Key? key}) : super(key: key);

  @override
  State<UserAddData> createState() => _UserAddDataState();
}

class _UserAddDataState extends State<UserAddData> {
  String petrolStock = "";
  String dieselStock = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Homagama Fuel Station',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),),
              const SizedBox(height:50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  const [
                  Text('Fuel Availability',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),),
                 ]),

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
              const SizedBox(height:20),
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
                      ),
                    ],
                  ),
              const SizedBox(height:20),
            ],
        ),
      ),
    ))
    );
  }
}
