import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportHelpScreen extends StatefulWidget {
  const SupportHelpScreen({super.key});

  @override
  State<SupportHelpScreen> createState() => _SupportHelpScreenState();
}

class _SupportHelpScreenState extends State<SupportHelpScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Support/Help'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Resources for Mental Health Support',                
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildLink('National Alliance on Mental Illness (NAMI)', 'https://www.nami.org', fontSize: 18),
              _buildLink('MentalHealth.gov', 'https://www.mentalhealth.gov', fontSize: 18),
              _buildLink('National Suicide Prevention Lifeline', 'https://www.suicidepreventionlifeline.org', fontSize: 18),
              _buildLink('Crisis Text Line: Text HOME to 741741','https://www.crisistextline.org', fontSize: 18), 
              _buildLink('Find a Therapist', 'https://www.therapistlocator.com', fontSize: 18),
              const SizedBox(height: 20),
              const Text(
                'Contact Numbers',                
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),                
              ),
              const SizedBox(height: 10),
              RichText(text: const TextSpan(children: [TextSpan(text: 'National Suicide Prevention Lifeline: ', style: TextStyle(fontSize: 18)), TextSpan(text: '(800) 273-8255', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))])),
              RichText(text: const TextSpan(children: [TextSpan(text: 'Crisis Text Line: ', style: TextStyle(fontSize: 18)), TextSpan(text: 'Text HOME to 741741', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))])),
              RichText(text: const TextSpan(children: [TextSpan(text: 'Substance Abuse and Mental Health Services Administration (SAMHSA): ', style: TextStyle(fontSize: 18)), TextSpan(text: '(800) 662-HELP (4357)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))])),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLink(String text, String url, {double fontSize = 16}) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: Text(text, style: TextStyle(color: Colors.blue, fontSize: fontSize)),
    );
  }
}