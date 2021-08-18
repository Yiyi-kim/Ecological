import 'package:flutter/material.dart';
import 'package:flutter_app/Recycle/Components/image_button.dart';
import 'package:flutter_app/Recycle/Components/image_container.dart';
import 'package:flutter_app/Recycle/Components/tooltip_dialog.dart';
import 'package:flutter_app/Recycle/Screen/success_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  int step = 0;
  late AnimationController controller;
  late Animation<double> animation;
  var alreadyCut = false;

  var scissorVisibility = true;
  var tissueVisibility = true;
  var dirtVisibility = true;
  var bottleVisibility = true;

  void cutMotion() {
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {
          alreadyCut = true;
        });
      });
    controller.forward();
  }

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

  void putTheBottleTogether() {
    setState(() {
      bottleVisibility = false;
      step = 4;
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
                          '1. Take 2-litre bottle \n 2. Cut it into half \n 3. Clean thoroughly \n 4. Drag the upper half then put the soil in \n 5. Place it in the bottom half \n \n'),
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
                // ImagesContainer('assets/images/empty_bottle.png'),
                // Baseline(
                //   baseline: animation.value,
                //   baselineType: TextBaseline.alphabetic,
                //   child: Image(
                //     image: AssetImage('assets/images/scissor.png'),
                //   ),
                // ),

                ImagesContainer('assets/images/top_half_bottle.png'),
              ] else if (step == 2) ...[
                ImagesContainer('assets/images/top_half_bottle.png')
              ] else if (step == 3) ...[
                ImagesContainer('assets/images/plant_in_top_half_bottle.png')
              ] else ...[
                ImagesContainer('assets/images/combind_bottle.png')
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
                        cutMotion();
                        print(step);
                      }
                    }),
                  if (tissueVisibility)
                    ImageButton('assets/images/tissue.png', () {
                      if (step != 0 && step == 1) {
                        cleanTheBottle();
                        print(step);
                      }
                    }),
                  if (dirtVisibility)
                    ImageButton('assets/images/plant.png', () {
                      if (step != 0 && step == 2) {
                        addSoil();
                        print(step);
                      }
                    }),
                  if (bottleVisibility)
                    ImageButton('assets/images/bottom_half_bottle.png', () {
                      if (step != 0 && step == 3) {
                        putTheBottleTogether();
                        print(step);
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(
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
