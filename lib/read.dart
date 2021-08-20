import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'mystateful_widget.dart';
import 'package:flutter_app/Cartoon/foodwaste.dart';
import 'package:flutter_app/Cartoon/burendplastic.dart';
import 'package:flutter_app/Cartoon/fossilefuel.dart';
import 'package:flutter_app/Cartoon/cuttingtree.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  _ReadState createState() => _ReadState();
}

class _ReadState extends State<Read> {

  @override
  Widget build(BuildContext context) {
    //System StatusBar delete
    SystemChrome.setEnabledSystemUIOverlays([]);

//<<<<<<< AppBar
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Global Warming',
            style: TextStyle(
                color: Colors.green,
                fontSize: 27,
                fontWeight: FontWeight.bold,
                fontFamily: 'itim'),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent.withOpacity(0),
          elevation: 0),
//<<<< Read Main View
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/dirt.jpeg', height: 130), //dirt image
            SizedBox(
              height: 30,
            ),
            //first cartoon box
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 4,
                        offset: Offset(1, 3))
                  ]),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BurendPlastic()));},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(1, 3))
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/trash.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text('Burend Plastic',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'itim')),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // 2 - cartoon box
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 4,
                        offset: Offset(1, 3))
                  ]),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FoodWaste()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(1, 3))
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/foodtrash.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text('Food waste',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'itim')),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // 3 - cartoon box
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 4,
                        offset: Offset(1, 3))
                  ]),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FossileFuel()));
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(1, 3))
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/smoke.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text('Fossile fuel',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'itim')),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // 4 - cartoon box
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 4,
                        offset: Offset(1, 3))
                  ]),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CuttingTree()));
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(1, 3))
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/tree.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Cutting Trees',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'itim')),
                    ])
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ])
        ],
      ),
    );
  }
}
