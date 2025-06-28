import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          'About HemoCycle',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'), // Add your logo
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Our Mission",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "HemoCycle aims to revolutionize menstrual health tracking by enabling non-invasive anemia monitoring through image-based AI. We believe in empowering women with personalized, accessible, and affordable health insights.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),
            const Text(
              "What We Do",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoCard(
              title: "Non-Invasive Anemia Detection",
              description:
              "We analyze images of fingernails and lower eyelids to estimate hemoglobin levels — no needles required.",
            ),
            InfoCard(
              title: "Offline AI Health Monitoring",
              description:
              "Our AI models work directly on your device using TensorFlow Lite and MediaPipe, ensuring privacy and accessibility.",
            ),
            InfoCard(
              title: "Doctor-Backed Health Tips",
              description:
              "We provide real-time tips verified by medical professionals to help users manage and reduce anemia symptoms.",
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Made with ❤️ by the HemoCycle Team",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.pink.shade800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;

  const InfoCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
