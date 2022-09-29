// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobile_apartment/animation/FadeAnimation.dart';
import 'package:url_launcher/url_launcher.dart';


SharedPreferences? dhananjay;
sharedpreferences() async {
  dhananjay = await SharedPreferences.getInstance();
  dhananjay!.getInt('onboarding') ?? 0;
}

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  _LoansState createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  const Icon(
                    Icons.align_horizontal_left_rounded,
                    size: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.8,
                  ),
                  const Icon(
                    Icons.search_rounded,
                    size: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 50,
                  ),
                  const Icon(
                    Icons.notification_add_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 50,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 8,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 10,
              ),
        FadeAnimation(1, Text(
                " Get Free",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 20,
                    fontWeight: FontWeight.w500),
        ) ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
        FadeAnimation(2, Text(
                " Consultation Now!",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 20,
                    fontWeight: FontWeight.w800),
        )),
              SizedBox(
                height: MediaQuery.of(context).size.width / 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green[600],
                    ),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2660/2660516.png',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(3,   Text(
                        "Personal Loan",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 45,
                            fontWeight: FontWeight.w500),
                      )),
                      SizedBox(height: MediaQuery.of(context).size.height / 70),
                      FadeAnimation(4, Text(
                        "2.8k Answers",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 60,
                            fontWeight: FontWeight.w500),
                      ) ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.width / 20,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              const Divider(),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green[600],
                    ),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/584/584026.png',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(4.3,  Text(
                        "Home Loan",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 45,
                            fontWeight: FontWeight.w500),
                      )),
                      SizedBox(height: MediaQuery.of(context).size.height / 70),
                      FadeAnimation(4.4, Text(
                        "9.5k Answers",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 60,
                            fontWeight: FontWeight.w500),
                      )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.6,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.width / 20,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              const Divider(),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green[600],
                    ),
                    child: Image.network(
                      'https://cdn-icons.flaticon.com/png/512/536/premium/536105.png?token=exp=1655305977~hmac=270f7b85c47366ba09304f477d3ddaf8',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(4.5, Text(
                        "Business Loan",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 45,
                            fontWeight: FontWeight.w500),
                      ) ),
                      SizedBox(height: MediaQuery.of(context).size.height / 70),
                      FadeAnimation(4.6,  Text(
                        "254 Answers",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 60,
                            fontWeight: FontWeight.w500),
                      ) ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.2,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.width / 20,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 24.4),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: containerRadius,
                      topRight: containerRadius,
                    )),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 24.4),
        FadeAnimation(4.7,  Text(
                      "Loan Calculator",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontWeight: FontWeight.w700),
        )),
                    SizedBox(height: MediaQuery.of(context).size.height / 110),
        FadeAnimation(4.8,   Text(
                      "Now Calculate Your Loan EMI With Easy",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 50,
                          fontWeight: FontWeight.w400),
        )),
                    SizedBox(height: MediaQuery.of(context).size.height / 60),
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child:InkWell(
                          onTap: () async {
                            const url =
                                'https://www.calculator.net';

                            if (await canLaunch(url)) {
                              await launch(url,
                                  forceSafariVC: true,
                                  enableJavaScript: true,
                                  forceWebView: true);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: FadeAnimation(5,  Text(
                          "Check Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 50,
                              fontWeight: FontWeight.bold),
                        )),
                        )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var containerRadius = const Radius.circular(30);
}
