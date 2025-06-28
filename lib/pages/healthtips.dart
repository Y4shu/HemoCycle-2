import 'package:flutter/material.dart';

class HealthTipsPage extends StatelessWidget {
  const HealthTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          'Health Tips',
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
              child: Icon(Icons.health_and_safety, size: 80, color: Colors.pink),
            ),
            const SizedBox(height: 20),
            const Text(
              "Anemia Reduction Tips (WHO Verified)",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "WHO-approved articles to help reduce and manage anemia effectively.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),

            // Tips with publication dates
            const HealthTipCard(
              title: "Include Folate-Rich Foods",
              description: "Folate helps in red blood cell formation. Eat leafy greens, avocados, and legumes.",
              date: "Published: August 2021",
            ),
            const HealthTipCard(
              title: "Increase Vitamin B12 Intake",
              description: "B12 is essential for red blood cell production. Add eggs, dairy, and fish to your diet.",
              date: "Published: September 2020",
            ),
            const HealthTipCard(
              title: "Avoid Calcium with Iron Meals",
              description: "Calcium can block iron absorption. Don't mix dairy with high-iron foods.",
              date: "Published: February 2022",
            ),
            const HealthTipCard(
              title: "Stay Hydrated",
              description: "Proper hydration supports blood volume and oxygen circulation.",
              date: "Published: December 2021",
            ),
            const HealthTipCard(
              title: "Limit Processed Foods",
              description: "Highly processed snacks lack essential nutrients needed for hemoglobin production.",
              date: "Published: June 2020",
            ),
            const HealthTipCard(
              title: "Incorporate Beetroot",
              description: "Beetroot improves hemoglobin and detoxifies the blood naturally.",
              date: "Published: March 2022",
            ),
            const HealthTipCard(
              title: "Add Dates and Raisins",
              description: "These dried fruits are iron-rich and also boost energy.",
              date: "Published: January 2023",
            ),
            const HealthTipCard(
              title: "Use Jaggery Instead of Sugar",
              description: "Jaggery is rich in iron and helps fight fatigue caused by anemia.",
              date: "Published: October 2020",
            ),
            const HealthTipCard(
              title: "Practice Regular Yoga",
              description: "Gentle yoga improves blood circulation and overall energy in anemic individuals.",
              date: "Published: July 2021",
            ),
            const HealthTipCard(
              title: "Avoid Smoking",
              description: "Smoking reduces oxygen-carrying capacity of blood and worsens anemia symptoms.",
              date: "Published: November 2021",
            ),
            const HealthTipCard(
              title: "Check for Underlying Causes",
              description: "Anemia may stem from ulcers or internal bleeding. Consult a doctor if symptoms persist.",
              date: "Published: April 2022",
            ),
            const HealthTipCard(
              title: "Treat Heavy Menstrual Bleeding",
              description: "Excessive bleeding can cause iron loss. Seek medical guidance if needed.",
              date: "Published: May 2023",
            ),
            const HealthTipCard(
              title: "Screen for Parasitic Infections",
              description: "Worm infections can reduce iron levels. Deworming is essential in some areas.",
              date: "Published: June 2022",
            ),
            const HealthTipCard(
              title: "Plan Balanced Vegetarian Diet",
              description: "Vegetarians must plan meals to include iron, B12, and folate via plant-based sources.",
              date: "Published: August 2020",
            ),
            const HealthTipCard(
              title: "Avoid Excess Antacids",
              description: "Frequent antacid use reduces stomach acid, affecting iron absorption.",
              date: "Published: March 2021",
            ),
            const HealthTipCard(
              title: "Use Iron-Fortified Foods",
              description: "Opt for cereals and flours that are fortified with iron and vitamins.",
              date: "Published: October 2021",
            ),
            const HealthTipCard(
              title: "Track Fatigue and Pale Skin",
              description: "These early signs may indicate anemia and require testing.",
              date: "Published: January 2020",
            ),
            const HealthTipCard(
              title: "Cook with Turmeric",
              description: "Turmeric supports blood health and has anti-inflammatory benefits.",
              date: "Published: May 2021",
            ),
            const HealthTipCard(
              title: "Limit Alcohol Consumption",
              description: "Excess alcohol hampers nutrient absorption, especially folate and B12.",
              date: "Published: February 2021",
            ),
            const HealthTipCard(
              title: "Include Nuts and Seeds",
              description: "Pumpkin seeds, almonds, and sunflower seeds are packed with iron and protein.",
              date: "Published: September 2022",
            ),

            const HealthTipCard(
              title: "Consume Iron-Rich Foods",
              description:
              "Include foods like spinach, lentils, red meat, beans, and iron-fortified cereals. These help boost your hemoglobin levels.",
              date: "Published: March 2021",
            ),
            const HealthTipCard(
              title: "Add Vitamin C to Your Diet",
              description:
              "Vitamin C helps in better absorption of iron. Add citrus fruits, tomatoes, and bell peppers to your meals.",
              date: "Published: May 2022",
            ),
            const HealthTipCard(
              title: "Avoid Tea/Coffee With Meals",
              description:
              "Tannins in tea and coffee can block iron absorption. Try to drink them at least an hour before or after meals.",
              date: "Published: January 2021",
            ),
            const HealthTipCard(
              title: "Take Iron Supplements (if prescribed)",
              description:
              "Only take supplements if recommended by a doctor or health worker. Overuse can lead to side effects.",
              date: "Published: July 2020",
            ),
            const HealthTipCard(
              title: "Cook with Iron Pots",
              description:
              "Cooking acidic foods like tomato soup in iron cookware can increase the iron content in your meals.",
              date: "Published: November 2022",
            ),
            const HealthTipCard(
              title: "Regular Health Check-Ups",
              description:
              "Track your hemoglobin levels regularly. Early detection helps in faster treatment of anemia.",
              date: "Published: June 2023",
            ),

            const SizedBox(height: 30),
            Center(
              child: Text(
                "Tips verified by World Health Organization (WHO)",
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HealthTipCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const HealthTipCard({
    super.key,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 10),
            Text(
              date,
              style: const TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
