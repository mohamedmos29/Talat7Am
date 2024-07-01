import 'package:flutter/material.dart';
import 'package:flutter_application_1/videoCall/call_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('video'),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CallPage(callID: 'u1u2'),),);
          },
          child: const Text('Start Call'),
        ),
      )),
    );
  }
}
