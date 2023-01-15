import 'package:flutter/material.dart';

import '../auth/register_page.dart';
import '../user_pages/user_add_data.dart';
import '../widgets/widgets.dart';


class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Home page'),
            ElevatedButton(onPressed:(){ nextScreen(context, UserAddData());},
                child: Text("next screen"))
          ],
        ),
      ),
    );
  }
}
