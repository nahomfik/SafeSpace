import 'package:flutter/material.dart';
import 'dart:math';

class MotivationalQuotesScreen extends StatefulWidget {
  const MotivationalQuotesScreen({super.key});

  @override
  State<MotivationalQuotesScreen> createState() => _MotivationalQuotesScreenState();
}

class _MotivationalQuotesScreenState extends State<MotivationalQuotesScreen> {
  String currentQuote = "Press the button for motivation!";
  final List<String> quotes = [
    "Believe you can and you're halfway there. – Theodore Roosevelt",
    "The only way to do great work is to love what you do. – Steve Jobs",
    "Success is not the key to happiness. Happiness is the key to success. – Albert Schweitzer",
    "Your limitation—it’s only your imagination.",
    // ... add more quotes here ...
  ];

  void generateQuote() {
    setState(() {
      currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motivational Quotes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                currentQuote,
                style: const TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: generateQuote,
              child: const Text('Get Inspired!'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
