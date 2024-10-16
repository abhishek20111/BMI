import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add some padding for better spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
          children: [
            Text(
              "Health Benefits:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Space between title and the list
            Text("1. Regular exercise improves mental health.", style: TextStyle(fontSize: 18)),
            Text("2. A balanced diet enhances immunity.", style: TextStyle(fontSize: 18)),
            Text("3. Staying hydrated improves skin health.", style: TextStyle(fontSize: 18)),
            Text("4. Quality sleep supports brain function.", style: TextStyle(fontSize: 18)),
            Text("5. Stress management promotes overall well-being.", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
