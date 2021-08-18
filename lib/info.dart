import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const
        Text(
          'App Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            fontFamily: 'itim'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Image.asset('assets/images/trash.jpeg', height: 130,),
              SizedBox(height: 10,),
              Text(
                'Ecological',
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'itim',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'e-ICON 2021. Team O',
                style: TextStyle(
                    color: Colors.green.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'itim'
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 90,
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
                    child: GestureDetector(
                        onTap: () {},
                        child:
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 30,),
                                Text(
                                  'About our Team',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'itim',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8)
                                  ),
                                ),
                              ],)
                          ],)
                    ),
                  ),
                  SizedBox(width: 20,)
                ],),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    Text(
                      'Reference materials',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'itim',
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    )
                  ]),
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(height: 90, width: 300,
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(13)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(1,3)
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/fontitim.jpeg'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(height: 17,),
                              Text(
                                'Font License',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'itim',
                                    color: Colors.black.withOpacity(0.8)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(height: 90, width: 300,
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(13)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(1,3)
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/trash.jpeg'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(height: 17,),
                              Text(
                                'link for image',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'itim',
                                    color: Colors.black.withOpacity(0.8)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(height: 90, width: 300,
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(13)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(1,3)
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/foodtrash.jpeg'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(height: 17,),
                              Text(
                                'link for image',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'itim',
                                    color: Colors.black.withOpacity(0.8)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(height: 90, width: 300,
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(13)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(1,3)
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/smoke.jpeg'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(height: 17,),
                              Text(
                                'link for image',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'itim',
                                    color: Colors.black.withOpacity(0.8)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(height: 90, width: 300,
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(13)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(1,3)
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/tree.jpeg'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(height: 17,),
                              Text(
                                'link for image',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'itim',
                                    color: Colors.black.withOpacity(0.8)
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
