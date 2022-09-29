import 'package:flutter/material.dart';
import 'package:mobile_apartment/animation/FadeAnimation.dart';
import 'package:mobile_apartment/models/service.dart';
import 'package:mobile_apartment/pages/start.dart';
import 'package:mobile_apartment/payment/Payment_Screen.dart';
import 'package:mobile_apartment/screens/Health.dart';
import 'package:mobile_apartment/screens/Loans.dart';
import 'package:mobile_apartment/screens/Remote.dart';
import 'package:mobile_apartment/screens/complain.dart';
import 'package:mobile_apartment/screens/complaints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Service> services = [
    Service(
        'Payments', 'https://cdn-icons-png.flaticon.com/512/3135/3135706.png'),
    Service('Loans', 'https://cdn-icons-png.flaticon.com/512/1538/1538344.png'),
    Service(
        'Health', 'https://cdn-icons-png.flaticon.com/512/2966/2966327.png'),
    Service(
        'Remote', 'https://cdn-icons-png.flaticon.com/512/3771/3771441.png'),
    Service(
        'Service', 'https://cdn-icons-png.flaticon.com/512/2706/2706962.png'),
    Service('Complaints',
        'https://cdn-icons-png.flaticon.com/512/3997/3997872.png'),
  ];
  int selectedService = -1;
  static const String username = 'Samuel Ssekizinvu';

  get name => services;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.list,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Complaints',
              ),
              Tab(
                icon: Icon(
                  Icons.support,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Support',
              ),
              Tab(
                icon: Icon(
                  Icons.manage_accounts,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Profile',
              ),
            ],
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
            children: [
              NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverToBoxAdapter(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        FadeAnimation(
                            1,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: const Offset(0, 4),
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            child: Image.asset(
                                              'person.png',
                                              width: 70,
                                            )),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              username,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Tenant",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.7),
                                                  fontSize: 18),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: const Center(
                                          child: Text(
                                        'View Profile',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ])))
                    ];
                  },
                  body: FadeAnimation(
                    2,
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1.0,
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 20.0,
                                  ),
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: services.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return FadeAnimation(
                                        (2.0 + index) / 4,
                                        serviceContainer(
                                            services[index].imageURL,
                                            services[index].name,
                                            index));
                                  }),
                            ),
                          ]),
                    ),
                  )),
              const Complain(),
            ],
          ),
        ));
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {
        switch (name) {
          case 'Payments':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Payments(),
              ),
            );
            break;
          case 'Loans':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Loans(),
              ),
            );
            break;
          case 'Health':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Health(),
              ),
            );
            break;
          case 'Remote':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Remote(),
              ),
            );
            break;
          case 'Service':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StartPage(),
              ),
            );
            break;
          case 'Complaints':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Complaints(),
              ),
            );
            break;
          default:
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedService == index
              ? Colors.blue.shade50
              : Colors.grey.shade100,
          border: Border.all(
            color: selectedService == index
                ? Colors.blue
                : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 80),
              const SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              )
            ]),
      ),
    );
  }
}
