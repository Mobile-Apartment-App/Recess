import 'package:flutter/material.dart';

import 'Pay_now.dart';

enum ButtonType { payBills, donate, receiptients, offers }

enum TransactionType { sent, received, pending }

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payments',
      theme: ThemeData(
        primaryColor: const Color(0xff2931a5),
        textTheme: const TextTheme(
          subtitle1: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Payments'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(21),
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hey Samuel,",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Text(
                                  "What would you do like to do today ?",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 5.0,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911329_960_720.jpg",
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const SendReceiveSwitch(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(21),
                    color: const Color(0xfff4f5f9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Flexible(
                          child: CustomButton(buttonType: ButtonType.payBills),
                        ),
                        Flexible(
                          child: CustomButton(buttonType: ButtonType.donate),
                        ),
                        Flexible(
                          child:
                              CustomButton(buttonType: ButtonType.receiptients),
                        ),
                        Flexible(
                          child: CustomButton(buttonType: ButtonType.offers),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "RECENT TRANSACTIONS",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17.0,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: const <Widget>[
                          Transaction(
                            receptient: "Amazigh Halzoun",
                            transactionAmout: "5000.00",
                            transactionDate: "26 Jun 2019",
                            transactionInfo: "Laptop",
                            transactionType: TransactionType.sent,
                          ),
                          Transaction(
                            receptient: "Awesome Client",
                            transactionAmout: "15000.00",
                            transactionDate: "26 Jun 2019",
                            transactionInfo: "Mobile App",
                            transactionType: TransactionType.received,
                          ),
                          Transaction(
                            receptient: "Lazy Client",
                            transactionAmout: "25000.00",
                            transactionDate: "24 Jun 2019",
                            transactionInfo: "Mobile App",
                            transactionType: TransactionType.pending,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

class SendReceiveSwitch extends StatelessWidget {
  const SendReceiveSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white54,
      ),
      padding: const EdgeInsets.all(21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DragTarget(
            builder:
                (BuildContext context, List candidateData, List rejectedData) {
              return Container(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Receive",
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
            onWillAccept: (data) {
              return true;
            },
            onAccept: (data) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Receive!"),
                ),
              );
            },
          ),
          Draggable(
            data: 5,
            feedback: Container(
              width: 51,
              height: 51,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white54, Theme.of(context).primaryColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.3, 1]),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money,
                color: Theme.of(context).primaryColor,
              ),
            ),
            axis: Axis.horizontal,
            childWhenDragging: Container(
              width: 51,
              height: 51,
            ),
            child: Container(
              width: 51,
              height: 51,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white54, Theme.of(context).primaryColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.3, 1]),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          DragTarget(
            builder: (context, candidateData, rejectedData) {
              return Container(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Send",
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
            onWillAccept: (data) {
              return true;
            },
            onAccept: (data) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SendScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final ButtonType buttonType;

  const CustomButton({super.key, required this.buttonType});

  @override
  Widget build(BuildContext context) {
    String buttonText = "", buttonImage;
    switch (buttonType) {
      case ButtonType.payBills:
        buttonText = "Pay Bills";
        buttonImage = "assets/receipt.png";
        break;
      case ButtonType.donate:
        buttonText = "Donate";
        buttonImage = "assets/donation.png";
        break;
      case ButtonType.receiptients:
        buttonText = "Receipients";
        buttonImage = "assets/users.png";
        break;
      case ButtonType.offers:
        buttonText = "Offers";
        buttonImage = "assets/discount.png";
        break;
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pay_rent()));
        },
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  gradient: const LinearGradient(
                    colors: [Colors.white10, Colors.black12],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  buttonImage,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              FittedBox(
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Transaction extends StatelessWidget {
  final TransactionType transactionType;
  final String transactionAmout, transactionInfo, transactionDate, receptient;

  const Transaction(
      {super.key,
      required this.transactionType,
      required this.transactionAmout,
      required this.transactionInfo,
      required this.transactionDate,
      required this.receptient});

  @override
  Widget build(BuildContext context) {
    String transactionName;
    IconData transactionIconData;
    Color color;
    switch (transactionType) {
      case TransactionType.sent:
        transactionName = "Sent";
        transactionIconData = Icons.arrow_upward;
        color = Theme.of(context).primaryColor;
        break;
      case TransactionType.received:
        transactionName = "Received";
        transactionIconData = Icons.arrow_downward;
        color = Colors.green;
        break;
      case TransactionType.pending:
        transactionName = "Pending";
        transactionIconData = Icons.arrow_downward;
        color = Colors.orange;
        break;
    }
    return Container(
      margin: const EdgeInsets.all(9.0),
      padding: const EdgeInsets.all(9.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.grey,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: FittedBox(
                      child: Icon(
                        transactionIconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          Flexible(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      receptient,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$ $transactionAmout",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "$transactionInfo - $transactionDate",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Text(
                      transactionName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send Money"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                "Select Payee",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, payees) {
                return ListTile(
                  title: const PayeeContainer(),
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class PayeeContainer extends StatelessWidget {
  const PayeeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911329_960_720.jpg",
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "John Doe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "+213123456789",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
