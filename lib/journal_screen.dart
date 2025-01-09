import 'package:flutter/material.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journal Entry', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal, // Calming color for the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _textController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Pour your thoughts here...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey), 
                  ),
                  contentPadding: const EdgeInsets.all(16.0), // Added padding
                ),
              ),
            ),
            const SizedBox(height: 16.0), // Added spacing
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Calming color for the button
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                textStyle: const TextStyle(fontSize: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
              ),
              onPressed: () {
                print(_textController.text);
                Navigator.pop(context);
              },
              child: const Text('Save Entry'),
            ), 
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
