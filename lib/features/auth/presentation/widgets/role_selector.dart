import 'package:flutter/material.dart';

class RoleSelector extends StatelessWidget {
  final String? selectedRole;
  final Function(String) onRoleSelected;

  const RoleSelector({
    super.key,
    required this.selectedRole,
    required this.onRoleSelected,
  });

  @override
  Widget build(BuildContext context) {
    // قائمة الأدوار مأخوذة من الصور اللي بعتها بالظبط
    final List<Map<String, dynamic>> roles = [
      {
        "title": "Freelancer",
        "subtitle": "Tell us more about your professional background.",
        "icon": Icons.laptop_mac_outlined,
      },
      {
        "title": "Student",
        "subtitle": "Help us connect you with the right team.",
        "icon": Icons.school_outlined,
      },
      {
        "title": "Guest",
        "subtitle": "Just a few details to personalize your experience.",
        "icon": Icons.person_search_outlined,
      },
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // خليناها سنتر عشان اللوجو
        children: [
          const SizedBox(height: 20),
          // إضافة اللوجو (تأكد من وجود المسار في الـ assets عندك)
          Image.asset(
            'assets/images/logo.png', // غير المسار حسب اسم الصورة عندك
            height: 100,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons. people_alt, size: 80, color: Color(0xFF345A81)),
          ),
          const SizedBox(height: 40),
          const Text(
            "Choose Your Role:",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF345A81),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "This helps us personalize your experience",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Color(0xFF8E99AF)),
          ),
          const SizedBox(height: 40),
          
          // عرض الكروت
          ...roles.map((role) => _buildRoleCard(
                title: role['title'],
                subtitle: role['subtitle'],
                icon: role['icon'],
              )),
        ],
      ),
    );
  }

  Widget _buildRoleCard({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    final isSelected = selectedRole == title;
    final Color activeColor = const Color(0xFF4285B4);

    return GestureDetector(
      onTap: () => onRoleSelected(title),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? activeColor : const Color(0xFFB0C4DE).withOpacity(0.5),
            width: isSelected ? 2.5 : 1.2, // زودنا السمك شوية للاختيار
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: isSelected 
            ? [BoxShadow(color: activeColor.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 4))]
            : [],
        ),
        child: Row(
          children: [
            // أيقونة الدور داخل مربع
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isSelected ? activeColor.withOpacity(0.05) : Colors.white,
                border: Border.all(
                  color: isSelected ? activeColor : const Color(0xFFB0C4DE).withOpacity(0.6)
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon, 
                color: const Color(0xFF345A81), 
                size: 28
              ),
            ),
            const SizedBox(width: 18),
            // نصوص الكارت
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF345A81),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12, 
                      color: Colors.grey.shade600,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}