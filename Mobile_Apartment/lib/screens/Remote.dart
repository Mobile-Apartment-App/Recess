// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:mobile_apartment/animation/FadeAnimation.dart';
import 'package:mobile_apartment/pages/home.dart';

class Remote extends StatefulWidget {
  const Remote({Key? key}) : super(key: key);

  @override
  _RemoteState createState() => _RemoteState();
}

class _RemoteState extends State<Remote> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: First());
  }
}

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  String swstatus = "off";
  String swstatus2 = "off";
  String swstatus3 = "off";
  String swstatus4 = "off";
  String swstatus5 = "off";

  bool swvalue = false;
  bool swvalue5 = false;
  bool swvalue4 = false;
  bool swvalue3 = false;
  bool swvalue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
          child: Column(
            children: [
              Container(
                //color: Colors.cyanAccent,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(20),
                child: Container(
                  //color: Colors.white45,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const HomePage()),
                      );
                    },
                  ),
                ),
              ),
          FadeAnimation(1,Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Card(
                  shadowColor: Colors.black54,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                          top: Radius.circular(160)),
                      side: BorderSide(width: 0, color: Colors.white)),
                  elevation: 15,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                          top: Radius.circular(160)),
                    ),
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: PageView(
                      children: [
                        Image.network(
                          'https://build.com.au/files/styles/blog_700/public/idea/images/minimalist-living-room_4.jpg?itok=k8bmZscn',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMcpV386h9W3h_1joT1_kbjxmGciJuJirFKeQv4dVuHOpYhDL6M5k2l4tshMpwPQAlS2Y&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://i.pinimg.com/236x/c7/9e/5b/c79e5b6e5be7669793abec34de7a3d7e.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              FadeAnimation(2, Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.pink[100]),
                    ),
              )),
          FadeAnimation(3, Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black12),
                    ),
          ) ),
          FadeAnimation(4,Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black12),
                    ),
          ) ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              FadeAnimation(4.5,Padding(
                    padding: const EdgeInsets.only(left: 8, top: 20),
                    child: Text(
                      "Living room",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 12,
                          fontWeight: FontWeight.bold),
                    ),
              )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    FadeAnimation(4.7,Padding(
                        padding: EdgeInsets.only(top: 2, left: 8),
                        child: Text(
                          "4 devices connected",
                          style: TextStyle(color: Colors.black38),
                        ),
                    )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink[200],
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FadeAnimation(4.8, Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Icon(
                              Icons.bar_chart_rounded,
                              color: Colors.black54,
                            ),
                          )),
                      FadeAnimation(4.9,Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "control center",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22,
                                  color: Colors.white),
                            ),
                      ) ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                      elevation: 6,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side:
                              const BorderSide(width: 0, color: Colors.white)),
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                          height: MediaQuery.of(context).size.height / 7.4,
                          width: MediaQuery.of(context).size.width / 3.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Icon(
                                  Icons.lightbulb_outline_rounded,
                                  color: Colors.black54,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "Hue Lights",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              80,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Switch(
                                    value: swvalue,
                                    inactiveThumbColor: Colors.white,
                                    activeTrackColor: Colors.green,
                                    activeColor: Colors.white,
                                    onChanged: (value) {
                                      setState(() {
                                        swvalue = value;
                                        if (swvalue == false) {
                                          swstatus = "";
                                        } else {
                                          swstatus = "";
                                        }
                                      });
                                    }),
                              )
                            ],
                          ),
                        ),
                      )),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, right: 70),
                            child: Icon(
                              Icons.lightbulb_outline_rounded,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, right: 20),
                            child: Text(
                              "Slide Lamp",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue2,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue2 = value;
                                    if (swvalue == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus2 = "";
                                    }
                                  });
                                }),
                          )
                        ],
                      ),
                      //color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.air,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Air Condition",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue3,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue3 = value;
                                    if (swvalue3 == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus3 = "";
                                    }
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.my_library_music,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Music",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue4,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue4 = value;
                                    if (swvalue4 == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus4 = "";
                                    }
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.wifi,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Wi-fi",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue5,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue5 = value;
                                    if (swvalue == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus5 = "";
                                    }
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
