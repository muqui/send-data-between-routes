import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        
        child: Column(
          children: [
            
            TextField(
              controller: _textController,
            ),
            ElevatedButton (
              child: const Text('View Details_1'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: _textController.text
                 
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}