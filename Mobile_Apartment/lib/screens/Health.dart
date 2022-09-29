// ignore_for_file: library_private_types_in_public_api, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Remote.dart';

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: First(),
      ),
    );
  }
}

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    var size = mwidth / 36;
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.grey[400],
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(size, size, size, 0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.yellow,
                    size: size + size,
                  ),
                  Text(
                    "DL. 01#07-66",
                    style: TextStyle(fontSize: size, color: Colors.black),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: mwidth / 3,
                  ),
                  Container(
                    height: mheight / 18,
                    width: mheight / 18,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5Z8cUqFSkVbtSL0CdjIgdFdW9-n2AGmM4bg&usqp=CAU"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(mheight / 18),
                      // backgroundBlendMode: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(height: size),
              Text("Hello Jane",
                  style: TextStyle(
                      fontSize: size,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: size,
              ),
              Row(
                children: [
                  Text(
                    "Find your specialist",
                    style: TextStyle(
                        fontSize: size + size,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size,
              ),
              Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                      hintText: 'Search doctor',
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      hintStyle: TextStyle(color: Colors.grey[400]),
                    ),
                    style: const TextStyle(color: Colors.black),
                    autofocus: false,
                  ),
                  Positioned(
                    height: mheight / 15,
                    width: mheight / 15,
                    top: 3,
                    right: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.circular(mheight / 15)),
                      child: Icon(
                        Icons.sync_rounded,
                        color: Colors.white,
                        size: (size * 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Doctor",
                      style: TextStyle(
                          fontSize: size + 5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text("see all",
                      style: TextStyle(
                        fontSize: size,
                        color: Colors.lightBlue[100],
                      )),
                ],
              ),
              SizedBox(
                height: size,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(size, size, size, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                height: mheight / 5.3,
                width: mwidth - 20,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: mheight / 10,
                          width: mheight / 10,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/illustrations/portrait-drawn-illustration-of-male-doctor-with-stethoscope-the-illustration-id1358127198?k=20&m=1358127198&s=612x612&w=0&h=Qh8SHdHBFQS9znx-M67ZOmQGVo6-drORTkgpR0CKD0Y="),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(mheight / 10),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prof. Dr. Kevin Williams",
                          style: TextStyle(
                              fontSize: size + 2,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size / 2,
                        ),
                        Text(
                          "Heart Surgeon - United hospital",
                          style: TextStyle(fontSize: size, color: Colors.grey),
                        ),
                        SizedBox(
                          height: size / 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_sharp,
                              color: Colors.blue,
                              size: size,
                            ),
                            Text("10.50 -2.40 PM",
                                style: TextStyle(
                                    fontSize: size, color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Fee: 12",
                              style:
                                  TextStyle(fontSize: size, color: Colors.grey),
                            ),
                            SizedBox(
                              width: size * 4,
                            ),
                            OutlinedButton(
                              child: Text(
                                "Appointment",
                                style: TextStyle(
                                    color: Colors.white, fontSize: size),
                              ),
                              onPressed: null,
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue.shade200),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(100.0, 20.0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(size, size, size, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                height: mheight / 5.3,
                width: mwidth - 20,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: mheight / 10,
                          width: mheight / 10,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-world-first-aid-day-doctors-red-cross-rescue-image_35184.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(mheight / 10),
                            // backgroundBlendMode: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prof. Dr. Kevin Williams",
                          style: TextStyle(
                              fontSize: size + 2,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size / 2,
                        ),
                        Text(
                          "Heart Surgeon - United hospital",
                          style: TextStyle(fontSize: size, color: Colors.grey),
                        ),
                        SizedBox(
                          height: size / 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_sharp,
                              color: Colors.blue,
                              size: size,
                            ),
                            Text("10.50 -2.40 PM",
                                style: TextStyle(
                                    fontSize: size, color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Fee: 12",
                              style:
                                  TextStyle(fontSize: size, color: Colors.grey),
                            ),
                            SizedBox(
                              width: size * 4,
                            ),
                            OutlinedButton(
                              onPressed: null,
                              child: Text(
                                "Appointment",
                                style: TextStyle(
                                    color: Colors.white, fontSize: size),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red.shade200),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(100.0, 20.0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size,
              ),
              Row(
                children: [
                  Text("Neurology",
                      style: TextStyle(
                          fontSize: size + 5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text("see all",
                      style: TextStyle(
                        fontSize: size,
                        color: Colors.blue[100],
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(height: size),
              SizedBox(
                height: mheight / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2660/2660516.png",
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Remote()),
                            );
                          },
                        ),
                        const Text(
                          "Cardiology",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 45,
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/1787/1787077.png",
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Remote()),
                            );
                          },
                        ),
                        const Text(
                          "Brain",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 45,
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/4193/4193406.png",
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Health()),
                            );
                          },
                        ),
                        const Text(
                          "Skin",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 45,
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Image.network(
                            "https://cdn-icons.flaticon.com/png/512/5144/premium/5144298.png?token=exp=1655306912~hmac=91e6e21a2e80f7ae2a12b20af28376ab",
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Remote()),
                            );
                          },
                        ),
                        const Text(
                          "Pain",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final fntfamily = GoogleFonts.nunito().fontFamily;

  Widget apntdate({required String date}) {
    return TextButton(
        onPressed: () {},
        child: Center(
          child: Text(
            date,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: fntfamily),
          ),
        ));
  }

  Widget timeLine({required String time}) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 40,
          width: 90,
          child: Center(
              child: Text(time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: fntfamily,
                  ))),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffffdb7aa), Color(0xffd4423a)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  )),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.align_horizontal_right,
                    )),
              ],
            )),
        Positioned(
            top: screenHeight * 0.10,
            left: (screenWidth - 200) / 2,
            right: (screenWidth - 200) / 2,
            child: Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/4720.png'),
                    fit: BoxFit.contain),
              ),
            )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 1,
          height: screenHeight * 0.56,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                )),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 84),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: fntfamily),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.grey, fontFamily: fntfamily),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 154, right: 24),
                        child: Text(
                          "Fee: 10",
                          style: TextStyle(
                              color: Colors.redAccent, fontFamily: fntfamily),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 24, left: 24),
                    child: Text(
                      "Dr.Jane Foster is a long established fact that a reader will be distracted by the readable content of a page.",
                      style:
                          TextStyle(color: Colors.black, fontFamily: fntfamily),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Appointment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: fntfamily),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 128),
                        child: Icon(Icons.navigate_before_outlined,
                            color: Colors.grey),
                      ),
                      Text(
                        "February",
                        style: TextStyle(
                            color: Colors.black, fontFamily: fntfamily),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Icon(Icons.navigate_next_outlined,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: apntdate(date: "Sun 2"),
                        ),
                        apntdate(date: "Mon 3"),
                        Container(
                          height: 55,
                          width: 45,
                          // color: Colors.orange,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(28)),
                          child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Tue 4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: fntfamily),
                                ),
                              )),
                        ),
                        apntdate(date: "Wed 5"),
                        apntdate(date: "Thu 6"),
                        apntdate(date: "Fri 7"),
                        apntdate(date: "Sat 8"),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: apntdate(date: "Sun 9"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Available Time",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: fntfamily),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                height: 40,
                                width: 90,
                                child: Center(
                                    child: Text("09:00 AM",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: fntfamily,
                                        ))),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red.shade100,
                                      Colors.red.shade200
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: const [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        timeLine(time: "09:30 Am"),
                        timeLine(time: "10:00 AM"),
                        timeLine(time: "10:30 AM")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
                      child: ElevatedButton(
                        child: Text(
                          "Appointment",
                          style: TextStyle(fontFamily: fntfamily),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          elevation: MaterialStateProperty.all(2),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue.shade400),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(370, 50)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: screenHeight * 0.37,
            left: (screenWidth - 350) / 2,
            right: (screenWidth - 350) / 2,
            height: screenHeight * 0.14,
            child: Card(
              elevation: 28, //2
              shadowColor: Colors.lightBlue.shade100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: LinearGradient(
                    colors: [
                      Colors.teal.shade100,
                      Colors.teal.shade300,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 1.0],
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                        child: Text(
                      "Dr. Jane Foster",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: fntfamily),
                    )),
                    const SizedBox(height: 8),
                    Center(
                        child: Text(
                      "     Senior Cardiologist and Surgeon United State medical college & hospital",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fntfamily),
                    ))
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}
