import 'package:flutter/material.dart';
import 'package:flutter_app/Recycle/Components/go_back_button.dart';
import 'package:flutter_app/Recycle/Screen/first_screen.dart';
import 'package:flutter_app/mystateful_widget.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Congratulations',
            style: TextStyle(
              color: Colors.green,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'There are many more ways to recycle plastic.',
            style: TextStyle(fontSize: 16.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Find out by yourselves!',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Image(
            image: AssetImage('assets/images/welldone.png'),
          ),
          SizedBox(
            height: 20.0,
          ),
          GoBackButton(
            () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => MyStatefulWidget()));
            },
            Text(
              "Go Back",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
