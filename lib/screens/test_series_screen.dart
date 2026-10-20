import 'package:flutter/material.dart';
import '../config/app_config.dart';
import '../data/mock_data.dart';

class TestSeriesScreen extends StatelessWidget {
  const TestSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Test Series & Quizzes"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: MockData.testSeries.length,
        itemBuilder: (context, index) {
          final test = MockData.testSeries[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: const Icon(Icons.quiz_rounded, color: Colors.green),
              ),
              title: Text(
                test['title'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "${test['questions']} Questions • ${test['durationMins']} Mins • ${test['marks']} Marks",
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppConfig.primaryColor,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Starting ${test['title']}...")),
                  );
                },
                child: Text(test['isFree'] ? "Start Free" : "Attempt"),
              ),
            ),
          );
        },
      ),
    );
  }
}
