import 'package:flutter/material.dart';
import 'dart:math';

class MotivationalQuotesScreen extends StatefulWidget {
  const MotivationalQuotesScreen({super.key});

  @override
  State<MotivationalQuotesScreen> createState() => _MotivationalQuotesScreenState();
}

class _MotivationalQuotesScreenState extends State<MotivationalQuotesScreen> {
  String currentQuote = 'Press the button for motivation!';
  double quoteOpacity = 1.0; 
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
            "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
            "Challenges are what make life interesting and overcoming them is what makes life meaningful. - Joshua Marine",
            "The secret of getting ahead is getting started. - Mark Twain",
            "Fall seven times, stand up eight. - Japanese Proverb",
            "Be the change that you wish to see in the world. - Mahatma Gandhi",
            "Happiness is not something ready made. It comes from your own actions. - Dalai Lama",
            "Happiness is not the absence of problems, it's the ability to deal with them. - Steve Maraboli",
            "Success is liking yourself, liking what you do, and liking how you do it. - Maya Angelou",
            "Every strike brings me closer to the next home run. - Babe Ruth",
            "The key to success is to start before you are ready. - Marie Forleo",
            "The man who moves a mountain begins by carrying away small stones. - Confucius",
            "A year from now you may wish you had started today. - Karen Lamb",
            "Go the extra mile. It's never crowded. - Wayne Dyer",
    // ... add more quotes here ...
  ];

  void generateQuote() {
    setState(() => quoteOpacity = 0.0); // Fade out

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        currentQuote = quotes[Random().nextInt(quotes.length)];
        quoteOpacity = 1.0; // Fade in
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motivational Quotes'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Example color
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Daily Inspiration',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                padding: const EdgeInsets.all(30.0), // Increased padding
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox( // Added SizedBox to control size
                  width: 350, // Set a fixed width
                  child: AnimatedOpacity(
                    opacity: quoteOpacity,
                    duration: const Duration(milliseconds: 500),
                    child: Text(currentQuote,
                      style: const TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF8e44ad), Color(0xFF3498db)],
                  ),
                ),
                child: ElevatedButton(
                  onPressed: generateQuote,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                    backgroundColor: Colors.transparent, // Make button background transparent
                    shadowColor: Colors.transparent, // Remove button shadow
                    textStyle: const TextStyle(fontSize: 16.0),
                  ),
                  child: const Text('Get Inspired!', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
