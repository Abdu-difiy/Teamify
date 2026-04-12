import 'package:flutter/material.dart';
import 'field_card.dart'; // تأكد إن ملف field_card.dart موجود وفيه كود

class FieldSelectionStep extends StatelessWidget {
  final String? selectedField;
  final Function(String) onFieldSelected;

  const FieldSelectionStep({
    super.key,
    required this.selectedField,
    required this.onFieldSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> fields = [
      {"title": "Development & IT", "icon": Icons.code, "color": Colors.blue},
      {"title": "Design & Creative", "icon": Icons.brush, "color": Colors.orange},
      {"title": "Sales & Marketing", "icon": Icons.trending_up, "color": Colors.green},
      {"title": "Writing & Translation", "icon": Icons.translate, "color": Colors.purple},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What is your professional field?",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF345A81)),
        ),
        const SizedBox(height: 8),
        const Text(
          "Choose one to help us tailor your experience.",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 32),
        ...fields.map((field) => FieldCard(
          title: field['title'],
          icon: field['icon'],
          iconColor: field['color'],
          isSelected: selectedField == field['title'],
          onTap: () => onFieldSelected(field['title']),
        )),
      ],
    );
  }
}