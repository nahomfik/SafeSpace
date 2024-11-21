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
            "Push yourself, because no one else is going to do it for you.",
            "Sometimes later becomes never. Do it now.",
            "Great things never come from comfort zones.",
            "Dream it. Wish it. Do it.",
            "Success doesn’t just find you. You have to go out and get it.",
            "The harder you work for something, the greater you’ll feel when you achieve it.",
            "Don't stop when you're tired. Stop when you're done.",
            "It's not whether you get knocked down, it's whether you get up. – Vince Lombardi",
            "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis",
            "Don't watch the clock; do what it does. Keep going. – Sam Levenson",
            "The best way to predict the future is to create it. – Abraham Lincoln",
            "If you want to achieve greatness stop asking for permission. – Anonymous",
            "You miss 100% of the shots you don’t take. – Wayne Gretzky",
            "Whether you think you can or you think you can't, you're right. – Henry Ford",
            "Success is walking from failure to failure with no loss of enthusiasm. – Winston Churchill",
            "It always seems impossible until it's done. – Nelson Mandela",
            "Start where you are. Use what you have. Do what you can. – Arthur Ashe",
            "It does not matter how slowly you go, as long as you do not stop. – Confucius",
            "The future belongs to those who believe in the beauty of their dreams. – Eleanor Roosevelt",
            "The harder you work, the luckier you get. – Gary Player",
            "The only limit to our realization of tomorrow will be our doubts of today. – Franklin D. Roosevelt",
            "Success usually comes to those who are too busy to be looking for it. – Henry David Thoreau",
            "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart. – Roy T. Bennett",
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
