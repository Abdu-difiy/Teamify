import 'package:flutter/material.dart';
import 'skill_chip.dart';

class SkillsSelectionStep extends StatelessWidget {
  final List<String> selectedSkills;
  final Function(String) onToggleSkill;
  final String? selectedField; // عشان نعرض مهارات مناسبة للمجال

  const SkillsSelectionStep({
    super.key,
    required this.selectedSkills,
    required this.onToggleSkill,
    this.selectedField,
  });

  @override
  Widget build(BuildContext context) {
    // مهارات تجريبية (ممكن تغيرها حسب المجال)
    final List<String> availableSkills = [
      "Flutter", "Dart", "Firebase", "Clean Architecture", 
      "UI/UX Design", "Figma", "Node.js", "MongoDB",
      "Problem Solving", "Teamwork", "Project Management"
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select Your Skills",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF345A81)),
          ),
          const SizedBox(height: 8),
          Text(
            "Choose the skills that match your expertise in $selectedField.",
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 24),
          // الـ Wrap بيخلي الـ Chips تنزل سطر جديد لما تخلص
          Wrap(
            spacing: 10, // مسافة أفقية
            runSpacing: 12, // مسافة رأسية
            children: availableSkills.map((skill) {
              return SkillChip(
                label: skill,
                isSelected: selectedSkills.contains(skill),
                onTap: () => onToggleSkill(skill),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}