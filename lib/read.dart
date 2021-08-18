import 'package:flutter/material.dart';
import 'package:flutter_app/Cartoon/foodwaste.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  _ReadState createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10,),
              Image.asset('assets/images/dirt.jpeg', height: 130,),
              SizedBox(height: 30,),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(13)
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          offset: Offset(1,3)
                      )
                    ]
                ),
                child:GestureDetector(
                  onTap: () {},
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(13)),
                          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1,3))],
                          image: DecorationImage(
                              image: AssetImage('assets/images/trash.jpeg'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),SizedBox(width: 35,),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('Burend Plastic', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'itim')),
                        ],)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(13)
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          offset: Offset(1,3)
                      )
                    ]
                ),
                child:GestureDetector(
                  onTap: () {},
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(13)),
                          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1,3))],
                          image: DecorationImage(
                              image: AssetImage('assets/images/foodtrash.jpeg'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),SizedBox(width: 35,),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('Food waste', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'itim')),
                        ],)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(13)
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          offset: Offset(1,3)
                      )
                    ]
                ),
                child:GestureDetector(
                  onTap: () {},
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(13)),
                          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1,3))],
                          image: DecorationImage(
                              image: AssetImage('assets/images/smoke.jpeg'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),SizedBox(width: 35,),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('Fossile fuel', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'itim')),
                        ],)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(13)
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          offset: Offset(1,3)
                      )
                    ]
                ),
                child:GestureDetector(
                  onTap: () {},
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(13)),
                          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1,3))],
                          image: DecorationImage(
                              image: AssetImage('assets/images/tree.jpeg'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),SizedBox(width: 35,),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('Cutting Trees', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'itim')),
                        ],)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ]
        )
      ],
    );
  }
}
