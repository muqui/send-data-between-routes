import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
 
   final String data;
  

  DetailScreen({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(data),
            ElevatedButton(
              child: Text('Pop!'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}