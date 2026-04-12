import 'package:flutter/material.dart';

class GuestDetailsStep extends StatelessWidget {
  final TextEditingController nameController;
  final String? reason;
  final Function(String?) onReasonChanged;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;


  const GuestDetailsStep({
    super.key,
    required this.nameController,
    required this.reason,
    required this.onReasonChanged,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF345A81))),
        const SizedBox(height: 10),
        TextField(controller: nameController, decoration: InputDecoration(hintText: "Enter your name", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        const SizedBox(height: 20),
        
        const Text("Password"),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),

        const SizedBox(height: 15),

        const Text("Confirm Password"),
        TextField(
          controller: confirmPasswordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Confirm password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        const SizedBox(height: 25),
        const Text("Why are you joining us?", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF345A81))),
        const SizedBox(height: 10),
        _radio("To explore projects", "Explore"),
        _radio("To find inspiration", "Inspiration"),
        _radio("Just looking around", "Browsing"),
      ],
    );
  }

  Widget _radio(String title, String value) => RadioListTile<String>(
    title: Text(title),
    value: value,
    groupValue: reason,
    onChanged: onReasonChanged,
    activeColor: const Color(0xFF4285B4),
  );
}
