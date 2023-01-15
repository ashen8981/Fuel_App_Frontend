import 'package:flutter/material.dart';
import 'package:fuel_app/widgets/widgets.dart';

import 'user_home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  bool isLoading = false;
  bool hasUserSearched = false;
  String stationName = "";
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722),

        title: TextField(
          controller: searchController,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
              hintText: "Search city",
              border: InputBorder.none
          ),
        ),
        actions: [

          GestureDetector(
            onTap: (){
              initiateSearchMethod();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.search),
            ),
          )
        ],
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
            Container(),
            isLoading ? const Center(child: CircularProgressIndicator(),) :stationList()
          ],
        ),
      ),
    );
  }

  initiateSearchMethod(){
    setState(() {
      isLoading = false;
      hasUserSearched = true;
    });
    city = "Ratnapura";
    stationName = "IOC Filling Station";

  }

  stationList(){
    return hasUserSearched ?
    ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              nextScreen(context, UserHome(
                stationName: stationName,
              ));
            },
            child: stationTile(
              city,
              stationName,
            ),
          );
        }
    ):Container();
  }

  Widget stationTile(String city, String stationName){
    return Container(
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
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 3,),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        title: Text(stationName),
        subtitle: Text(city),
      ),
    );
  }
}