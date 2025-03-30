import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The root widget of your Flutter application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codelab Flutter Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Using Material 3 and a seeded color scheme.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Codelab HackDavis 2025 Template"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Club logo or placeholder image
            const FlutterLogo(size: 100),
            const SizedBox(height: 16),
            const Text(
              "Flutter + Express + Supabase Template",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Welcome to Codelab's HackDavis 2025 Template! "
              "This template provides a solid foundation for building modern, full-stack applications "
              "with Flutter on the front-end, Express as the backend, and Supabase for authentication, "
              "database, and storage.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 24),
            const Text(
              "Features",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const FeatureList(),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                textStyle: const TextStyle(
                  // Set inherit to true so that it matches the default style.
                  inherit: true,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Navigate or trigger your "Get Started" action.
              },
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    // List the key features similar to the Next.js template.
    return Column(
      children: const [
        FeatureItem(
          icon: Icons.flutter_dash,
          title: "Flutter Frontend",
          description:
              "Modern UI built with Flutter for fast, responsive performance.",
        ),
        FeatureItem(
          icon: Icons.web,
          title: "Express Backend",
          description: "Robust and scalable backend powered by Express.",
        ),
        FeatureItem(
          icon: Icons.storage,
          title: "Supabase Integration",
          description: "Seamless integration for auth, database, and storage.",
        ),
        FeatureItem(
          icon: Icons.code,
          title: "Hackathon Ready",
          description:
              "Kickstart your project with our pre-configured template.",
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 32),
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
