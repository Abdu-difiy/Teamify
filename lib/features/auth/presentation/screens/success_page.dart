import 'package:flutter/material.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  final String imagePath;
  final String message;

  const RegistrationSuccessScreen({
    super.key,
    required this.imagePath,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 👇 الحل هنا: حطينا الصورة جوه Container بخلفية بيضاء
            Container(
              padding: const EdgeInsets.all(15), // مسافة بيضاء صغيرة حول الصورة
              decoration: BoxDecoration(
                color: Colors.white, // تلوين الخلفية باللون الأبيض
                borderRadius: BorderRadius.circular(20), // حواف ناعمة
                // اختياري: إضافة ظل خفيف جداً لإبراز الصورة
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.05),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5), 
                  ),
                ],
              ),
              child: Image.asset(
                imagePath,
                height: 280, // قللنا الارتفاع قليلاً ليناسب الـ Padding
                fit: BoxFit.contain,
              ),
            ),
            
            const SizedBox(height: 50),
            
            // النص الأصلي بتاعك مع إضافة الـ Quotes والاقتباس
            Text(
              "“ $message ”",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xFF345A81),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            
            const SizedBox(height: 70),
            
            // زرار Go to Home
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4384B6),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 0,
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              child: const Text(
                "Go to Home",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
      ),
    );
  }
}