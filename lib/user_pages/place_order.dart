import 'package:flutter/material.dart';
import 'package:fuel_app/user_pages/succesful_page.dart';
import 'package:lottie/lottie.dart';

import '../widgets/widgets.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => PlaceOrderState();
}

class PlaceOrderState extends State<PlaceOrder> {
  String input = "Petrol";

  @override
  Widget build(BuildContext context) {
    var _formKey;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Place Order"),
        backgroundColor: const Color(0xFFFF5722),
        elevation: 0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Lottie.network('https://assets5.lottiefiles.com/private_files/lf30_bdxjz37g.json',
            fit: BoxFit.fill,),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Fuel Type:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          RadioListTile(
            value: "Petrol",
            groupValue: Action,
            title: const Text("Petrol"),
            onChanged: (value) {
              setState(() {
                input = value.toString();
              });
            },
          ),
          RadioListTile(
            value: "Diesel",
            groupValue: Action,
            title: const Text("Diesel"),
            onChanged: (value) {
              setState(() {
                input = value.toString();
              });
            },
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "How many Liters you want ?:",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the quantity of fuel in liters',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFF5722)
                    ),
                    onPressed: () {
                      nextScreen(context, SuccessfulPage());
                    },
                    child: const Text('Submit',
                    style: TextStyle(fontSize: 18),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}