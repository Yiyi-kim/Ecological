import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/read.dart';
import 'package:flutter_app/mystateful_widget.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyStatefulWidget(),
      '/fw1' : (context) => Cartoon1(),
      '/fw2' : (context) => Cartoon2()
    },
  ));
}

class FoodWaste extends StatefulWidget {
  const FoodWaste({Key? key}) : super(key: key);

  @override
  _FoodWaste createState() => _FoodWaste();
}

class _FoodWaste extends State<FoodWaste> {

  static Route<void> _Rd(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const MyStatefulWidget()
    );
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: AppBar(
        title: const
        Text(
          'Food Waste',
          style: TextStyle(
            color: Colors.green,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            fontFamily: 'itim'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
        leading: IconButton(icon:
        Icon(Icons.arrow_back_rounded,
            size: 35, color: Colors.green),
            onPressed: () {
              Navigator.of(context).restorablePushAndRemoveUntil(
                  _Rd,
                  ModalRoute.withName('/fw1')
              );
            }
        ),
      ),
      body:
        Cartoon1()
    );
  }
}

class Cartoon1 extends StatelessWidget {
  const Cartoon1({Key? key}) : super(key: key);

  static Route<void> _fw2(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const Cartoon2()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 480,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(13)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(1,1)
                      )],
                    image: DecorationImage(
                        image: AssetImage('assets/cartoon/foodwaste/food1.jpg'),
                        fit: BoxFit.fill
                    )
                ),
              )
            ]),
        Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(children: [
            Expanded(flex: 4, child: Container(color: Colors.transparent.withOpacity(0))),
            Expanded(flex: 1,
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blueAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_right,size: 30),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).restorablePushAndRemoveUntil(
                          _fw2,
                        ModalRoute.withName('/fw1')
                      );
                    },
                  ),
                )
            ),
          ])
        ])
      ],
    );
  }
}

class Cartoon2 extends StatelessWidget {
  const Cartoon2({Key? key}) : super (key : key);

  static Route<void> _fw3(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const Cartoon3()
    );
  }

  static Route<void> _Rd(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const MyStatefulWidget()
    );
  }

  static Route<void> _fw1(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const Cartoon1()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const
        Text(
          'Burend Plastic',
          style: TextStyle(
              color: Colors.green,
              fontSize: 27,
              fontWeight: FontWeight.bold,
              fontFamily: 'itim'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
        leading: IconButton(icon:
        Icon(Icons.arrow_back_rounded,
            size: 35, color: Colors.green),
            onPressed: () {
              Navigator.of(context).restorablePushAndRemoveUntil(
                  _Rd,
                  ModalRoute.withName('/fw2')
              );
            }
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 480,
                  width: 390,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(13)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(1,1)
                        )],
                      image: DecorationImage(
                          image: AssetImage('assets/cartoon/foodwaste/food2.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                )
              ]),
          Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Row(children: [
                  Expanded(flex: 1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.redAccent,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_left,size: 30),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).restorablePushAndRemoveUntil(
                                _fw1,
                                ModalRoute.withName('/fw2')
                            );
                          },
                        ),
                      )
                  ),
                  Expanded(flex: 3, child: Container(color: Colors.transparent.withOpacity(0))),
                  Expanded(flex: 1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.blueAccent,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_right,size: 30),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).restorablePushAndRemoveUntil(
                                _fw3,
                                ModalRoute.withName('/fw2')
                            );
                          },
                        ),
                      )
                  ),
                ])
              ])
        ],
      ),
    );
  }
}

class Cartoon3 extends StatelessWidget {
  const Cartoon3({Key? key}) : super(key: key);

  static Route<void> _fw2(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => const Cartoon2()
    );
  }

  static Route<void> _Rd(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
        builder: (BuildContext context) => const MyStatefulWidget()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const
        Text(
          'Food Waste',
          style: TextStyle(
              color: Colors.green,
              fontSize: 27,
              fontWeight: FontWeight.bold,
              fontFamily: 'itim'
          ),

        ),
        centerTitle: true,
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
        leading: IconButton(icon:
        Icon(Icons.arrow_back_rounded,
            size: 35, color: Colors.green),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyStatefulWidget())
              );

              Navigator.of(context).restorablePushAndRemoveUntil(
                _Rd,
                ModalRoute.withName('/fw3')
              );
            }
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 480,
                  width: 390,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(13)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(1,1)
                        )],
                      image: DecorationImage(
                          image: AssetImage('assets/cartoon/foodwaste/food3.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                )
              ]),
          Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Row(children: [
                  Expanded(flex: 1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.redAccent,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_left,size: 30),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).restorablePushAndRemoveUntil(
                              _fw2,
                              ModalRoute.withName('/fw3')
                            );
                          },
                        ),
                      )
                  ),
                  Expanded(flex: 3, child: Container(color: Colors.transparent.withOpacity(0))),
                  Expanded(flex: 1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.blueAccent,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.view_headline_rounded,size: 30),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).restorablePushAndRemoveUntil(
                              _Rd,
                              ModalRoute.withName('/fw3')
                            );
                          },
                        ),
                      )
                  ),
                ])
              ])
        ],
      ),
    );
  }
}