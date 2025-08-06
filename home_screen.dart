
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> tasks = [
    "Learning Programming by 12PM",
    "Learn how to cook by 1PM",
    "Learn how to play at 2PM",
    "Have lunch at 4PM",
    "Going to travel 6PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task List")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(tasks[index]),
              leading: Icon(Icons.check_circle_outline),
            ),
          );
        },
      ),
    );
  }
}
