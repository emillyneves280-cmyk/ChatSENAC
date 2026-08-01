import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatSENAC'),
      ),
      body: const Center(
        child: Text('', style: TextStyle(fontSize: 24),),
      ),
    );
  }
}