import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/Recycle/Components/image_button.dart';
import 'package:flutter_app/Recycle/Components/image_container.dart';
import 'package:flutter_app/Recycle/Components/tooltip_dialog.dart';
import 'package:flutter_app/Recycle/Screen/success_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  int step = 0;

  var scissorVisibility = true;
  var tissueVisibility = true;
  var dirtVisibility = true;
  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  void cutTheBottle() {
    setState(() {
      scissorVisibility = false;
      step = 1;
    });
  }

  void cleanTheBottle() {
    setState(() {
      tissueVisibility = false;
      step = 2;
    });
  }

  void addSoil() {
    setState(() {
      dirtVisibility = false;
      step = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Little Garden",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  padding: EdgeInsets.all(21.0),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => TooltipDialog('Instructions',
                          '1. Take 2-litre bottle \n 2. Cut it into half \n 3. Drag the upper half then put the soil in \n 4. Place it in the bottom half \n \n Done!!'),
                    );
                  },
                  icon: Icon(
                    Icons.message,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
              ),
              if (step == 0) ...[
                ImagesContainer('assets/images/empty_bottle.png')
              ] else if (step == 1) ...[
                ImagesContainer('assets/images/top_half_bottle.png'),
              ] else if (step == 2) ...[
                ImagesContainer('assets/images/plant_in_top_half_bottle.png'),
              ] else ...[
                ImagesContainer('assets/images/combind_bottle.png'),
              ],
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (scissorVisibility)
                    ImageButton("assets/images/scissor.png", () {
                      if (step == 0) {
                        cutTheBottle();
                        print(step);
                      }
                    }),
                  if (tissueVisibility)
                    ImageButton('assets/images/plant.png', () {
                      if (step != 0 && step == 1) {
                        cleanTheBottle();
                        print(step);
                      }
                    }),
                  if (dirtVisibility)
                    ImageButton('assets/images/bottom_half_bottle.png', () {
                      if (step != 0 && step == 2) {
                        addSoil();
                        print(step);
                        Future.delayed(Duration(seconds: 2), () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SuccessScreen()));
                        });
                      }
                    })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
