import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState(); 
} 
class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Safe Space!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "We're glad you're here! Safe Space is about creating a warm and welcoming environment where you can feel supported and connected. Our mission is to provide a safe haven where you can express yourself and find the help you need.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Meet Our Team',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Our team is made up of caring and dedicated individuals who are passionate about mental well-being. We come from diverse backgrounds and work together to support each member of our community.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Our Vision',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                  'We envision a world where mental health is prioritized, and everyone has access to the resources and support they need. Together, we can break the stigma surrounding mental health.',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              const Text(
                'Get in Touch',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(text: 'Have questions or need assistance? We’d love to hear from you! Drop us an email at '),
                    TextSpan(text: 'support@safe-space.com', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
                    TextSpan(text: '.'),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}