import 'package:flutter/material.dart';

class FreelancerDetailsStep extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final String? selectedField;
  final String? experienceLevel;
  final String? availability;
  final Function(String?) onFieldChanged;
  final Function(String?) onExperienceChanged;
  final Function(String?) onAvailabilityChanged;
  final VoidCallback onContinue;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const FreelancerDetailsStep({
    super.key,
    required this.nameController,
    required this.emailController,
    this.selectedField,
    this.experienceLevel,
    this.availability,
    required this.onFieldChanged,
    required this.onExperienceChanged,
    required this.onAvailabilityChanged,
    required this.onContinue,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header("Full Name"),
        _input(nameController, "Name"),
        _header("Email"),
        _input(emailController, "Email", icon: Icons.email_outlined),
        _header("Password"),
        _input(passwordController, "Create a password", icon: Icons.lock_outline),
        _header("Confirm Password"),
        _input(confirmPasswordController, "Confirm your password", icon: Icons.lock_outline),
        _header("Professional Field"),
        _radioGroup(["Designer", "Developer", "Marketer", "Project Manager"], selectedField, onFieldChanged),
        _header("Experience Level"),
        _radioGroup(["Beginner", "Intermediate", "Expert"], experienceLevel, onExperienceChanged),
        _header("Availability"),
        _radioGroup(["Full Time", "Part Time", "Freelance"], availability, onAvailabilityChanged),
      ],
    );
  }

  Widget _header(String t) => Padding(padding: const EdgeInsets.only(top: 15, bottom: 5), child: Text(t, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF345A81), fontSize: 17)));
  
  Widget _input(TextEditingController c, String h, {IconData? icon}) => TextField(
    controller: c,
    decoration: InputDecoration(hintText: h, suffixIcon: Icon(icon), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
  );

  Widget _radioGroup(List<String> opts, String? current, Function(String?) onChange) => Column(
    children: opts.map((o) => RadioListTile<String>(
      title: Text(o),
      value: o,
      groupValue: current,
      activeColor: Color(0xFF4285B4),
      onChanged: onChange,
      contentPadding: EdgeInsets.zero,
    )).toList(),
  );
}