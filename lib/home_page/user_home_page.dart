import 'package:flutter/material.dart';
import 'package:fuel_app/user_pages/place_order.dart';
import 'package:fuel_app/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

class UserHome extends StatefulWidget {
  final String stationName;
  const UserHome({Key? key,
    required this.stationName,
  }) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722),
        centerTitle: true,
        title: Text(widget.stationName),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
            ),

          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network('https://assets9.lottiefiles.com/packages/lf20_ZXgMbf.json',
              width: 500,
              fit: BoxFit.fill,),
            //SizedBox(height: 25,),
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
                        blurRadius: 4,
                        offset: const Offset(0.0, 5.0)
                    )
                  ]
              ),
              child: Column(
                children: [
                  const Text('Oil Availability', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text('Diesel'),
                          SizedBox(height: 5.0,),
                          Text('6500L')
                        ],
                      ),
                      const SizedBox(width: 60.0,),
                      Column(
                        children: const [
                          Text('Diesel'),
                          SizedBox(height: 5.0,),
                          Text('8000L')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text('Petrol Queue length:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.0,),
                      Text('110 m', style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: const [
                      Text('Diesel Queue length:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.0,),
                      Text('200 m', style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF5722)
                ),
                onPressed: (){
                  nextScreen(context, PlaceOrder());
                },
                child: const Text('Add To Qeuve'))
          ],
        ),
      ),
    );
  }
}