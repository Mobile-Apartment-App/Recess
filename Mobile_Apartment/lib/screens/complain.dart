import 'package:flutter/material.dart';
import 'package:mobile_apartment/animation/FadeAnimation.dart';
import 'package:mobile_apartment/screens/complaints.dart';

class Complain extends StatefulWidget {
  const Complain({ Key? key }) : super(key: key);

  @override
  _ComplainState createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
  get _subjectController => EmailSender;

  get _bodyController => EmailSender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                  child: FadeAnimation(1, Padding(
                    padding: const EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
                    child: Text(
                      'View all your complaints',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ))
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(8),
            children:  <Widget>[
              Card(
                  child: ListTile(
                      title: Text(_subjectController),
                      subtitle: Text(_bodyController),
                      leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                      trailing: const Icon(Icons.star))),
              const Card(
                  child: ListTile(
                      title: Text("Anchor"),
                      subtitle: Text("Lower the anchor."),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                      trailing: Icon(Icons.star))),
              const Card(
                  child: ListTile(
                      title: Text("Alarm"),
                      subtitle: Text("This is the time."),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                      trailing: Icon(Icons.star))),
              const Card(
                  child: ListTile(
                      title: Text("Ballot"),
                      subtitle: Text("Cast your vote."),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                      trailing: Icon(Icons.star)))
            ],
          )
        )
    );
  }

}