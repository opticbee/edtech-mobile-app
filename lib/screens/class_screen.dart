import 'package:flutter/material.dart';

class ClassScreen extends StatelessWidget {
  final Map classData;

  const ClassScreen({super.key, required this.classData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(classData['name'])),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              classData['name'],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(classData['description']),
            const SizedBox(height: 20),
            if (classData['imageUrl'] != null)
              Image.network(classData['imageUrl']),
          ],
        ),
      ),
    );
  }
}
