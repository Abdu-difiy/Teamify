import 'package:flutter/material.dart';

class StudentDetailsStep extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final String? currentLevel;
  final String? major;
  final List<String> selectedSkills;
  final bool lookingForTeam;
  final Function(String?) onLevelChanged;
  final Function(String?) onMajorChanged;
  final Function(bool) onLookingForTeamChanged;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const StudentDetailsStep({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.currentLevel,
    required this.major,
    required this.selectedSkills,
    required this.lookingForTeam,
    required this.onLevelChanged,
    required this.onMajorChanged,
    required this.onLookingForTeamChanged,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader("Full Name"),
        _buildTextField(nameController, "Your Name", icon: Icons.person_outline),
        
        _buildHeader("Email"),
        _buildTextField(emailController, "example@gmail.com", icon: Icons.email_outlined),

        _buildHeader("Password"),
        _buildTextField(passwordController, "Create a password", icon: Icons.lock_outline),

        _buildHeader("Confirm Password"),
        _buildTextField(confirmPasswordController, "Confirm your password", icon: Icons.lock_outline),

        _buildHeader("Current Level"),
        _buildDropdown(
          "Select Level", 
          ["Level 1", "Level 2", "Level 3", "Level 4"], 
          currentLevel, 
          onLevelChanged
        ),
        
        _buildHeader("Major"),
        _buildDropdown(
          "Select Major", 
          ["Computer Science", "Information Systems", "Engineering", "Business"], 
          major, 
          onMajorChanged
        ),
        
        _buildHeader("Primary Skills"),
        _buildSkillsWrap(),
        
        _buildHeader("Looking for a team?"),
        Row(
          children: [
            _buildRadio("Yes", true),
            const SizedBox(width: 30),
            _buildRadio("No", false),
          ],
        ),
      ],
    );
  }

  // --- ميثود بناء العناوين بتنسيق احترافي ---
  Widget _buildHeader(String title) => Padding(
        padding: const EdgeInsets.only(top: 18, bottom: 8, left: 4),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF345A81),
          ),
        ),
      );

  // --- ميثود بناء حقول النص بشكل الـ UI المطلوب ---
  Widget _buildTextField(TextEditingController controller, String hint, {IconData? icon}) => TextField(
        controller: controller,
        style: const TextStyle(color: Color(0xFF345A81)),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
          prefixIcon: icon != null ? Icon(icon, color: const Color(0xFF4285B4), size: 22) : null,
          filled: true,
          fillColor: const Color(0xFFF8FAFC), // خلفية فاتحة جداً زي الصور
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF4285B4), width: 1.5),
          ),
        ),
      );

  // --- ميثود الـ Dropdown الحقيقي (Level & Major) ---
  Widget _buildDropdown(String hint, List<String> items, String? value, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      value: value,
      icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF345A81)),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF4285B4), width: 1.5),
        ),
      ),
      hint: Text(hint, style: TextStyle(color: Colors.grey[400], fontSize: 14)),
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item, style: const TextStyle(color: Color(0xFF345A81), fontSize: 15)),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }

  // --- ميثود عرض المهارات (Primary Skills) ---
  Widget _buildSkillsWrap() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          border: Border.all(color: const Color(0xFFE2E8F0)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: selectedSkills.map((s) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF4285B4).withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF4285B4).withOpacity(0.3)),
            ),
            child: Text(
              s,
              style: const TextStyle(color: Color(0xFF345A81), fontWeight: FontWeight.w500, fontSize: 13),
            ),
          )).toList(),
        ),
      );

  // --- ميثود الـ Radio (Yes/No) ---
  Widget _buildRadio(String label, bool value) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<bool>(
            value: value,
            groupValue: lookingForTeam,
            activeColor: const Color(0xFF4285B4),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (v) => onLookingForTeamChanged(v!),
          ),
          Text(
            label,
            style: const TextStyle(color: Color(0xFF345A81), fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      );
}