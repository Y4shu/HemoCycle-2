import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:finalhemocycle/widgets/CustomInfoContainer.dart';
import 'healthtips.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _handleTrackCycle(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Coming soon!')),
    );
  }

  void _handleHealthTips(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HealthTipsPage()),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 Background Lottie Animation
          Positioned.fill(
            child: Lottie.asset(
              'assets/animation/Animation - 1750950749357.json',
              fit: BoxFit.cover,
              repeat: true,
            ),
          ),

          /// 🔹 Main Content Over the Background
          SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hey\nBeautiful,",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Center(
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 300,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Column(
                    children: [
                      CustomInfoContainer(
                        title: "Track Cycle",
                        subtitle: "Monitor your monthly cycle here",
                        color: Colors.white54,
                        icon: Icons.camera_alt,
                        onIconPressed: () => _handleTrackCycle(context),
                      ),
                      const SizedBox(height: 10),
                      CustomInfoContainer(
                        title: "Health Tips",
                        subtitle: "Get daily wellness advice",
                        color: Colors.white54,
                        icon: Icons.health_and_safety,
                        onIconPressed: () => _handleHealthTips(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
