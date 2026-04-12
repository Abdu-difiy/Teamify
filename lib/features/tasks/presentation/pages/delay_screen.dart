import 'dart:math';
import 'package:flutter/material.dart';

class DelayScreen extends StatefulWidget {
  const DelayScreen({super.key});

  @override
  State<DelayScreen> createState() => _DelayScreenState();
}

class _DelayScreenState extends State<DelayScreen> {
  int delayPercent = 0;
  bool isLoading = true;

  List<Map<String, dynamic>> workload = [];

  @override
  void initState() {
    super.initState();
    _loadFakeData();
  }

  Future<void> _loadFakeData() async {
    await Future.delayed(const Duration(seconds: 1));

    final random = Random();

    setState(() {
      delayPercent = random.nextInt(60) + 30;

      workload = [
        {"name": "John", "tasks": random.nextInt(10) + 5},
        {"name": "Alice", "tasks": random.nextInt(10) + 2},
        {"name": "Mike", "tasks": random.nextInt(10) + 1},
      ];

      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        title: const Text("Delay Prediction",
            style: TextStyle(color: Color(0xFF0D3B66))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF0D3B66)),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDelayCard(),
                  const SizedBox(height: 25),
                  _buildWorkloadSection(),
                  const SizedBox(height: 25),
                  _buildInsights(),
                ],
              ),
            ),
    );
  }

  // ---------------- DELAY CARD ----------------
  Widget _buildDelayCard() {
    Color color;

    if (delayPercent > 70) {
      color = Colors.red;
    } else if (delayPercent > 50) {
      color = Colors.orange;
    } else {
      color = Colors.green;
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Text(
            "Project Delay Risk",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Text(
            "$delayPercent%",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            delayPercent > 70
                ? "High Risk ⚠️"
                : delayPercent > 50
                    ? "Medium Risk"
                    : "Low Risk",
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }

  // ---------------- WORKLOAD ----------------
  Widget _buildWorkloadSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Workload Distribution",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF0D3B66)),
        ),
        const SizedBox(height: 15),

        Column(
          children: workload.map((user) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(user["name"][0]),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(user["name"]),
                  ),
                  Text("${user["tasks"]} tasks"),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  // ---------------- INSIGHTS ----------------
  Widget _buildInsights() {
    String insight;

    if (delayPercent > 70) {
      insight = "Team is overloaded. Consider redistributing tasks.";
    } else if (delayPercent > 50) {
      insight = "Some delays detected. Monitor progress closely.";
    } else {
      insight = "Project is running smoothly.";
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF3FB),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.lightbulb_outline, color: Color(0xFF4384B6)),
          const SizedBox(width: 10),
          Expanded(child: Text(insight)),
        ],
      ),
    );
  }
}