import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_apartment/animation/FadeAnimation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: const EmailSender(),
    );
  }
}

class EmailSender extends StatefulWidget {
  const EmailSender({Key? key}) : super(key: key);

  @override
  _EmailSenderState createState() => _EmailSenderState();
}

class _EmailSenderState extends State<EmailSender> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'samuelkchris@gmail.com',
  );

  final _subjectController = TextEditingController(text: 'Complaint Description');

  final _bodyController = TextEditingController(
    text: 'Complaint body.',
  );

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
      isHTML: isHTML,
    );

    String platformResponse;
    try {
      await FlutterEmailSender.send(email);

      platformResponse = 'success';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
                child: FadeAnimation(1, Padding(
                  padding: const EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
                  child: Text(
                    'Send New Complaints to the Landlord?',
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              FadeAnimation(2,Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _subjectController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Complaint',
                  ),
                ),
      )),
              Expanded(
                child: FadeAnimation(3,Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _bodyController,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: const InputDecoration(
                        labelText: 'Body', border: OutlineInputBorder()),
                  ),
                ),
                )),

        FadeAnimation(4,Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    for (var i = 0; i < attachments.length; i++)
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              attachments[i],
                              softWrap: false,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove_circle),
                            onPressed: () => {_removeAttachment(i)},
                          )
                        ],
                      ),
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.attach_file),
                        onPressed: _openImagePicker,
                      ),
                    ),
                    TextButton(
                      onPressed: _openImagePicker,
                      child: const Text('Click Here To Attach A file'),
                    ),
                    ProgressButton.icon(iconedButtons: {
                      ButtonState.idle: IconedButton(
                          text: "Send",
                          icon: const Icon(Icons.send, color: Colors.white),
                          color: Colors.deepPurple.shade500),
                      ButtonState.loading: IconedButton(
                          text: "Loading", color: Colors.deepPurple.shade700),
                      ButtonState.fail: IconedButton(
                          text: "Failed",
                          icon: const Icon(Icons.cancel, color: Colors.white),
                          color: Colors.red.shade300),
                      ButtonState.success: IconedButton(
                          text: "Success",
                          icon: const Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          ),
                          color: Colors.green.shade400)
                    }, onPressed: send, state: ButtonState.idle)
                  ],
                ),
        )),
            ],
          ),
        ),
      )
    );
  }

  void _openImagePicker() async {
    final picker = ImagePicker();
    PickedFile? pick = await picker.getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }

  Future<void> _attachFileFromAppDocumentsDirectoy() async {
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      final filePath = '${appDocumentDir.path}/file.txt';
      final file = File(filePath);
      await file.writeAsString('Text file in app directory');

      setState(() {
        attachments.add(filePath);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to create file in applicion directory'),
        ),
      );
    }
  }
}
