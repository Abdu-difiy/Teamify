import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String taskName;
  final String dueDate;
  final String tag;

  const TaskDetailsScreen({
    super.key,
    required this.taskName,
    required this.dueDate,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF345A81)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Task Details", style: TextStyle(color: Color(0xFF345A81), fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ترويسة المهمة
            _buildTag(tag),
            const SizedBox(height: 12),
            Text(
              taskName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF345A81)),
            ),
            const SizedBox(height: 8),
            Text("Due $dueDate", style: const TextStyle(color: Color(0xFF536E8F), fontSize: 16)),
            
            const SizedBox(height: 30),
            
            // كارت الـ AI Prediction (نسبة التأخير)
            _buildPredictionCard(),
            
            const SizedBox(height: 30),
            
            const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF345A81))),
            const SizedBox(height: 10),
            const Text(
              "This task involves completing the high-fidelity mockups for the homepage and ensuring they align with the new design system guidelines.",
              style: TextStyle(color: Color(0xFF536E8F), height: 1.5),
            ),
            
            const Spacer(),
            
            // زرار تعديل الحالة
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {}, // هنا هتعمل الـ Logic بتاع الـ Status update
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4384B6),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text("Mark as Completed", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: const Color(0xFFD9E9F3), borderRadius: BorderRadius.circular(20)),
      child: Text(text, style: const TextStyle(color: Color(0xFF4384B6), fontWeight: FontWeight.bold, fontSize: 12)),
    );
  }

  Widget _buildPredictionCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFD9E9F3)),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 15)],
      ),
      child: Row(
        children: [
          const Icon(Icons.auto_awesome, color: Colors.orangeAccent, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("AI Prediction", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF345A81))),
                Text("70% chance of delay based on current progress", style: TextStyle(fontSize: 12, color: Color(0xFF536E8F))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}