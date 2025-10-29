import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track And Deploy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TrackAndDeploy(),
    );
  }
}

class TrackAndDeploy extends StatelessWidget {
  const TrackAndDeploy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 1,
                color: Colors.black.withValues(alpha: 0.05),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.rocket_launch,
                size: 70,
                color: Colors.orange.shade600,
              ),
              const SizedBox(height: 20),
              const Text(
                'Track & Deploy',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'A practical implementation for CI/CD automation and Marketing tools using Flutter.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
