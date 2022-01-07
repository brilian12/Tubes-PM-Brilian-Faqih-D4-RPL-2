import 'package:flutter/material.dart';

class coba extends StatefulWidget {
  const coba({ Key? key }) : super(key: key);

  @override
  _cobaState createState() => _cobaState();
}

class _cobaState extends State<coba> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nav Barr")),
      body: ListView(
                children: <Widget>[

                  //Shang chi
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/shangchi.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Shang Chi"),
                                  ),
                                  Container(
                                    child: Text("13+"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),


                  //luca
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/luca.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Luca         "),
                                  ),
                                  Container(
                                    child: Text("SU"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),


                        /*encanto
                        Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/encanto.jpeg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Encanto"),
                                  ),
                                  Container(
                                    child: Text("SU"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  ),
                      ],
                    ),
                  ),*/


                  //spiderman
                  

                  
                ]

                
            ),
                  ),
                ],
            ),
    );

  }
}

Widget conta() {
return Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.indigo.withOpacity(0.1),
                    padding: EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("images/shangchi.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Text("Shang Chi"),
                                  ),
                                  Container(
                                    child: Text("13"),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          child: Icon(Icons.add_circle_rounded),
                        ),
                      ],
                    ),
                  );
}
