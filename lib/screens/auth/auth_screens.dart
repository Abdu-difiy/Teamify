import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/routes.dart';
import '../../widgets/widgets.dart';

// ── Teamify Logo Widget ───────────────────────────────────────────────────────
class _TeamifyLogo extends StatelessWidget {
  final double size;
  const _TeamifyLogo({this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: size,
      height: size,
      fit: BoxFit.contain,
    );
  }
}

// ── Splash ────────────────────────────────────────────────────────────────────
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) Navigator.pushReplacementNamed(context, R.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const _TeamifyLogo(size: 150),
          const SizedBox(height: 16),
          const Text(
            'Teamify',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A3A6B),
              letterSpacing: 1.0,
            ),
          ),
        ]),
      ),
    );
  }
}

// ── Onboarding ────────────────────────────────────────────────────────────────
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _page = 0;

  final _pages = [
    _OnboardData(
      emoji: '💼',
      illustration: _IllustrationWork(),
      text: '"Work smarter together with\nAI-powered task allocation."',
      isLast: false,
    ),
    _OnboardData(
      emoji: '🔔',
      illustration: _IllustrationAlert(),
      text: '"Stay ahead — AI alerts you\nwhen tasks are at risk of\ndelay."',
      isLast: false,
    ),
    _OnboardData(
      emoji: '🔒',
      illustration: _IllustrationSecure(),
      text: '"Communicate safely with\nend-to-end encryption and\nsecure data protection."',
      isLast: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, R.roleSelection),
                child: const Text('Skip', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600, fontSize: 16)),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (i) => setState(() => _page = i),
              itemCount: _pages.length,
              itemBuilder: (_, i) => _buildPage(_pages[i]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              if (_pages[_page].isLast)
                TButton(
                  label: 'Get Started',
                  onTap: () => Navigator.pushReplacementNamed(context, R.roleSelection),
                )
              else
                const SizedBox.shrink(),
              const SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(_pages.length, (i) => Container(
                width: i == _page ? 20 : 8, height: 8,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(color: i == _page ? AppColors.primary : AppColors.border, borderRadius: BorderRadius.circular(4)),
              ))),
              const SizedBox(height: 8),
            ]),
          ),
        ]),
      ),
    );
  }

  Widget _buildPage(_OnboardData d) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 240, child: d.illustration),
      const SizedBox(height: 32),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Text(d.text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, color: AppColors.textPrimary, height: 1.5, fontStyle: FontStyle.italic)),
      ),
    ]);
  }
}

class _OnboardData {
  final String emoji, text;
  final Widget illustration;
  final bool isLast;
  const _OnboardData({required this.emoji, required this.illustration, required this.text, required this.isLast});
}

class _IllustrationWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/onboarding1.png',
      width: 300,
      height: 220,
      fit: BoxFit.contain,
    );
  }
}

class _WorkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final w = size.width;
    final h = size.height;

    // Background dots pattern
    paint.color = const Color(0xFFE8E8E8);
    for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 4; j++) {
        canvas.drawCircle(Offset(i * 18.0, j * 18.0), 2.5, paint);
        canvas.drawCircle(Offset(w - i * 18.0, j * 18.0), 2.5, paint);
      }
    }

    // Table/floor line
    paint.color = const Color(0xFFE8E8E8);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(20, h * 0.72, w - 40, 8), const Radius.circular(4)), paint);

    // --- Board on wall ---
    paint.color = Colors.white;
    final boardRect = RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.38, h * 0.05, w * 0.22, h * 0.38), const Radius.circular(6));
    canvas.drawRRect(boardRect, paint);
    paint.color = const Color(0xFFE0E0E0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.5;
    canvas.drawRRect(boardRect, paint);
    paint.style = PaintingStyle.fill;
    // Blue square
    paint.color = const Color(0xFF2D5FA6);
    canvas.drawRect(Rect.fromLTWH(w * 0.49, h * 0.12, w * 0.07, h * 0.09), paint);
    // Gray squares
    paint.color = const Color(0xFFBBBBBB);
    canvas.drawRect(Rect.fromLTWH(w * 0.41, h * 0.12, w * 0.07, h * 0.09), paint);
    canvas.drawRect(Rect.fromLTWH(w * 0.41, h * 0.23, w * 0.07, h * 0.09), paint);
    canvas.drawRect(Rect.fromLTWH(w * 0.49, h * 0.23, w * 0.07, h * 0.09), paint);

    // --- Left person (woman leaning) ---
    // Body
    paint.color = const Color(0xFFF5F5F5);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.05, h * 0.38, w * 0.18, h * 0.30), const Radius.circular(8)), paint);
    // Hair
    paint.color = const Color(0xFF1A1A2E);
    canvas.drawCircle(Offset(w * 0.13, h * 0.28), w * 0.07, paint);
    // Head
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(w * 0.14, h * 0.30), w * 0.055, paint);
    // Arm leaning forward
    paint.color = const Color(0xFFD4956A);
    final armPath = Path()
      ..moveTo(w * 0.18, h * 0.48)
      ..quadraticBezierTo(w * 0.28, h * 0.52, w * 0.33, h * 0.60);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 10;
    paint.strokeCap = StrokeCap.round;
    canvas.drawPath(armPath, paint);
    paint.style = PaintingStyle.fill;

    // --- Left laptop ---
    paint.color = const Color(0xFF222222);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.25, h * 0.55, w * 0.18, h * 0.14), const Radius.circular(4)), paint);
    paint.color = const Color(0xFF1A1A2E);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.22, h * 0.68, w * 0.24, h * 0.04), const Radius.circular(2)), paint);

    // --- Right person (man sitting) ---
    // Body - blue shirt
    paint.color = const Color(0xFF2D5FA6);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.62, h * 0.42, w * 0.20, h * 0.28), const Radius.circular(8)), paint);
    // Head
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(w * 0.72, h * 0.30), w * 0.055, paint);
    // Hair
    paint.color = const Color(0xFF1A1A2E);
    canvas.drawArc(Rect.fromCircle(center: Offset(w * 0.72, h * 0.28), radius: w * 0.055), 3.14, 3.14, true, paint);

    // --- Right laptop ---
    paint.color = const Color(0xFF1A1A2E);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.58, h * 0.57, w * 0.20, h * 0.13), const Radius.circular(4)), paint);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.55, h * 0.69, w * 0.26, h * 0.03), const Radius.circular(2)), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _IllustrationAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/onboarding2.png',
      width: 300,
      height: 220,
      fit: BoxFit.contain,
    );
  }
}

class _AlertPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final w = size.width;
    final h = size.height;

    // Background circle
    paint.color = const Color(0xFFF0F0F0);
    canvas.drawCircle(Offset(w * 0.5, h * 0.55), w * 0.35, paint);

    // Left phone
    paint.color = const Color(0xFF1A3A6B);
    final leftPhone = RRect.fromRectAndRadius(
      Rect.fromLTWH(w * 0.05, h * 0.18, w * 0.28, h * 0.58),
      const Radius.circular(14),
    );
    canvas.drawRRect(leftPhone, paint);
    // Left phone screen
    paint.color = const Color(0xFFCCDDFF);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.08, h * 0.22, w * 0.22, h * 0.48), const Radius.circular(8)), paint);
    // Left person in phone
    paint.color = const Color(0xFF2D5FA6);
    canvas.drawCircle(Offset(w * 0.19, h * 0.35), w * 0.055, paint);
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(w * 0.19, h * 0.35), w * 0.04, paint);

    // Right phone
    paint.color = const Color(0xFF1A3A6B);
    final rightPhone = RRect.fromRectAndRadius(
      Rect.fromLTWH(w * 0.67, h * 0.18, w * 0.28, h * 0.58),
      const Radius.circular(14),
    );
    canvas.drawRRect(rightPhone, paint);
    // Right phone screen
    paint.color = const Color(0xFFCCDDFF);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.70, h * 0.22, w * 0.22, h * 0.48), const Radius.circular(8)), paint);
    // Right person in phone
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(w * 0.81, h * 0.35), w * 0.04, paint);

    // Handshake in middle
    paint.color = const Color(0xFFD4956A);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 8;
    paint.strokeCap = StrokeCap.round;
    // Left arm
    canvas.drawLine(Offset(w * 0.30, h * 0.55), Offset(w * 0.50, h * 0.52), paint);
    // Right arm
    canvas.drawLine(Offset(w * 0.70, h * 0.55), Offset(w * 0.50, h * 0.52), paint);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(w * 0.50, h * 0.52), 10, paint);

    // Gear icons
    paint.color = const Color(0xFFCCCCCC);
    _drawGear(canvas, Offset(w * 0.08, h * 0.12), 12, paint);
    _drawGear(canvas, Offset(w * 0.92, h * 0.12), 12, paint);
    _drawGear(canvas, Offset(w * 0.12, h * 0.88), 8, paint);
    _drawGear(canvas, Offset(w * 0.88, h * 0.88), 8, paint);

    // Leaf decorations
    paint.color = const Color(0xFF4DA6FF).withOpacity(0.5);
    canvas.drawOval(Rect.fromLTWH(w * 0.02, h * 0.72, 20, 30), paint);
    canvas.drawOval(Rect.fromLTWH(w * 0.88, h * 0.72, 20, 30), paint);
  }

  void _drawGear(Canvas canvas, Offset center, double radius, Paint paint) {
    canvas.drawCircle(center, radius, paint);
    paint.color = Colors.white;
    canvas.drawCircle(center, radius * 0.5, paint);
    paint.color = const Color(0xFFCCCCCC);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _IllustrationSecure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/onboarding3.png',
      width: 300,
      height: 220,
      fit: BoxFit.contain,
    );
  }
}

class _SecurePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final w = size.width;
    final h = size.height;

    // Top-left browser window
    _drawBrowserWindow(canvas, Rect.fromLTWH(0, 0, w * 0.42, h * 0.45), paint, hasChart: true);
    // Top-right browser window
    _drawBrowserWindow(canvas, Rect.fromLTWH(w * 0.55, h * 0.02, w * 0.42, h * 0.42), paint, hasChat: true);
    // Bottom-left person with tablet
    _drawPersonTablet(canvas, Offset(w * 0.18, h * 0.65), paint);
    // Bottom-right person
    _drawPersonEnvelope(canvas, Offset(w * 0.72, h * 0.62), paint);

    // Globe in middle
    paint.color = const Color(0xFFE0E8F0);
    canvas.drawCircle(Offset(w * 0.5, h * 0.5), 18, paint);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.5;
    paint.color = const Color(0xFFAAAAAA);
    canvas.drawCircle(Offset(w * 0.5, h * 0.5), 18, paint);
    paint.style = PaintingStyle.fill;

    // Chat bubbles
    paint.color = const Color(0xFFE8E8E8);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.22, h * 0.48, 30, 18), const Radius.circular(8)), paint);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(w * 0.60, h * 0.22, 30, 18), const Radius.circular(8)), paint);
    // Dots in bubbles
    paint.color = const Color(0xFFAAAAAA);
    for (int i = 0; i < 3; i++) {
      canvas.drawCircle(Offset(w * 0.22 + 6 + i * 8.0, h * 0.48 + 9), 2.5, paint);
      canvas.drawCircle(Offset(w * 0.60 + 6 + i * 8.0, h * 0.22 + 9), 2.5, paint);
    }
  }

  void _drawBrowserWindow(Canvas canvas, Rect rect, Paint paint, {bool hasChart = false, bool hasChat = false}) {
    paint.color = Colors.white;
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(8));
    canvas.drawRRect(rrect, paint);
    paint.color = const Color(0xFFE0E0E0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    canvas.drawRRect(rrect, paint);
    paint.style = PaintingStyle.fill;
    // Title bar
    paint.color = const Color(0xFFF5F5F5);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(rect.left + 1, rect.top + 1, rect.width - 2, 14), const Radius.circular(8)), paint);
    // Dots
    for (int i = 0; i < 3; i++) {
      paint.color = i == 0 ? Colors.red : i == 1 ? Colors.orange : Colors.green;
      canvas.drawCircle(Offset(rect.left + 8 + i * 10.0, rect.top + 8), 3, paint);
    }
    if (hasChart) {
      // Simple chart bars
      paint.color = const Color(0xFF2D5FA6);
      for (int i = 0; i < 5; i++) {
        final barH = (i % 3 + 1) * 10.0;
        canvas.drawRect(Rect.fromLTWH(rect.left + 8 + i * 12.0, rect.bottom - 20 - barH, 8, barH), paint);
      }
    }
    if (hasChat) {
      // Person avatar
      paint.color = const Color(0xFFD4956A);
      canvas.drawCircle(Offset(rect.left + rect.width * 0.5, rect.top + 35), 14, paint);
    }
  }

  void _drawPersonTablet(Canvas canvas, Offset center, Paint paint) {
    // Person sitting with tablet
    paint.color = const Color(0xFF2D2D2D);
    canvas.drawCircle(Offset(center.dx, center.dy - 30), 16, paint);
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(center.dx, center.dy - 30), 12, paint);
    // Body
    paint.color = const Color(0xFF555577);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(center.dx - 18, center.dy - 15, 36, 35), const Radius.circular(6)), paint);
    // Tablet
    paint.color = const Color(0xFF333333);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(center.dx - 14, center.dy + 5, 28, 20), const Radius.circular(3)), paint);
    paint.color = const Color(0xFF87CEEB);
    canvas.drawRect(Rect.fromLTWH(center.dx - 11, center.dy + 8, 22, 14), paint);
    // Envelope being passed
    paint.color = const Color(0xFF2D5FA6);
    canvas.drawRect(Rect.fromLTWH(center.dx + 20, center.dy, 25, 18), paint);
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.5;
    canvas.drawLine(Offset(center.dx + 20, center.dy), Offset(center.dx + 32, center.dy + 9), paint);
    canvas.drawLine(Offset(center.dx + 45, center.dy), Offset(center.dx + 32, center.dy + 9), paint);
    paint.style = PaintingStyle.fill;
  }

  void _drawPersonEnvelope(Canvas canvas, Offset center, Paint paint) {
    // Person receiving envelope
    paint.color = const Color(0xFFD4956A);
    canvas.drawCircle(Offset(center.dx, center.dy - 30), 12, paint);
    paint.color = const Color(0xFF2D7D9A);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(center.dx - 16, center.dy - 15, 32, 30), const Radius.circular(6)), paint);
    // Hand reaching out
    paint.color = const Color(0xFFD4956A);
    canvas.drawOval(Rect.fromLTWH(center.dx - 30, center.dy, 20, 14), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ── Role Selection ────────────────────────────────────────────────────────────
class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});
  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String _selected = 'Freelancer';

  final _roles = [
    {'id': 'Freelancer', 'icon': Icons.laptop_outlined, 'title': 'Freelancer', 'sub': '"Tell us more about your professional background."'},
    {'id': 'Student', 'icon': Icons.school_outlined, 'title': 'Student', 'sub': '"Help us connect you with the right team."'},
    {'id': 'Admin', 'icon': Icons.admin_panel_settings_outlined, 'title': 'Admin', 'sub': '"Configure your admin settings to get full control of your workspace"'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(children: [
            const SizedBox(height: 20),
            const _TeamifyLogo(size: 120),
            const SizedBox(height: 28),
            const Text('Choose Your Role:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.primaryDark)),
            const SizedBox(height: 8),
            const Text('This helps us personalize your experience', style: TextStyle(color: AppColors.textSecondary, fontSize: 14)),
            const SizedBox(height: 32),
            ...(_roles.map((r) {
              final sel = _selected == r['id'];
              return GestureDetector(
                onTap: () => setState(() => _selected = r['id'] as String),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: sel ? AppColors.primary : AppColors.border, width: sel ? 2 : 1),
                  ),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.08), borderRadius: BorderRadius.circular(8)),
                      child: Icon(r['icon'] as IconData, color: AppColors.primary, size: 22),
                    ),
                    const SizedBox(width: 14),
                    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(r['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
                      Text(r['sub'] as String, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                    ])),
                  ]),
                ),
              );
            })),
            const Spacer(),
            TButton(
              label: 'Continue',
              onTap: () {
                if (_selected == 'Admin') Navigator.pushNamed(context, R.login, arguments: 'Admin');
                else if (_selected == 'Student') Navigator.pushNamed(context, R.login, arguments: 'Student');
                else Navigator.pushNamed(context, R.login, arguments: 'Freelancer');
              },
            ),
            const SizedBox(height: 8),
          ]),
        ),
      ),
    );
  }
}

// ── Sign In ───────────────────────────────────────────────────────────────────
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscure = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)?.settings.arguments as String? ?? 'Freelancer';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 16),
            const Center(child: _TeamifyLogo(size: 120)),
            const SizedBox(height: 32),
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example562@gmail.com', prefix: Icons.email_outlined),
            const SizedBox(height: 16),
            const Text('Password', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            TextField(
              obscureText: _obscure,
              decoration: InputDecoration(
                hintText: '••••••••••••••••••••',
                hintStyle: const TextStyle(color: AppColors.textHint),
                suffixIcon: IconButton(icon: Icon(_obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: AppColors.textSecondary), onPressed: () => setState(() => _obscure = !_obscure)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.border)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.border)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.primary)),
              ),
            ),
            const SizedBox(height: 12),
            Row(children: [
              GestureDetector(
                onTap: () => setState(() => _rememberMe = !_rememberMe),
                child: Row(children: [
                  Container(width: 18, height: 18, decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(3)),
                    child: _rememberMe ? const Icon(Icons.check, size: 12, color: AppColors.primary) : null),
                  const SizedBox(width: 8),
                  const Text('Remember me', style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                ]),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, R.forgotPassword),
                child: const Text('Forget Password?', style: TextStyle(fontSize: 13, color: AppColors.primary, fontWeight: FontWeight.w600)),
              ),
            ]),
            const SizedBox(height: 24),
            TButton(
              label: 'Sign in',
              onTap: () {
                if (role == 'Admin') Navigator.pushNamedAndRemoveUntil(context, R.adminHome, (_) => false);
                else if (role == 'Student') Navigator.pushNamedAndRemoveUntil(context, R.studentHome, (_) => false);
                else Navigator.pushNamedAndRemoveUntil(context, R.freelancerHome, (_) => false);
              },
            ),
            const SizedBox(height: 24),
            Row(children: [
              const Expanded(child: Divider()),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text('Or', style: TextStyle(color: AppColors.textSecondary))),
              const Expanded(child: Divider()),
            ]),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _socialImageBtn('assets/images/google_logo.png'),
              const SizedBox(width: 16),
              _socialImageBtn('assets/images/github_logo.png'),
            ]),
            const SizedBox(height: 20),
            Center(child: GestureDetector(
              onTap: () {
                if (role == 'Admin') Navigator.pushNamed(context, R.signupAdmin);
                else if (role == 'Student') Navigator.pushNamed(context, R.signupStudent);
                else Navigator.pushNamed(context, R.signupFreelancer);
              },
              child: RichText(text: const TextSpan(
                text: 'Already have an account?',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
                children: [TextSpan(text: 'Sign up', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold))],
              )),
            )),
          ]),
        ),
      ),
    );
  }

  Widget _socialImageBtn(String assetPath) {
    return Container(
      width: 48, height: 48,
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.border)),
      child: Center(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(assetPath, fit: BoxFit.contain),
      )),
    );
  }
}

Widget _field({required String hint, IconData? prefix, bool obscure = false}) {
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: AppColors.textHint),
      prefixIcon: prefix != null ? Icon(prefix, color: AppColors.textSecondary, size: 20) : null,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.border)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.border)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.primary)),
    ),
  );
}

// ── Admin Signup ──────────────────────────────────────────────────────────────
class AdminSignupScreen extends StatefulWidget {
  const AdminSignupScreen({super.key});
  @override
  State<AdminSignupScreen> createState() => _AdminSignupScreenState();
}

class _AdminSignupScreenState extends State<AdminSignupScreen> {
  bool _alerts = false;
  bool _twoFA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(child: _TeamifyLogo(size: 120)),
            const SizedBox(height: 16),
            const Center(child: Text('Set Up Your Admin Workspace', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryDark))),
            const Center(child: Text('Manage your team, security, and system settings', style: TextStyle(color: AppColors.textSecondary, fontSize: 13), textAlign: TextAlign.center)),
            const SizedBox(height: 28),
            const Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example'),
            const SizedBox(height: 16),
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example562@gmail.com', prefix: Icons.email_outlined),
            const SizedBox(height: 20),
            const Text('Security Settings', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 16)),
            const SizedBox(height: 12),
            _checkRow('Enable Security Alerts', _alerts, (v) => setState(() => _alerts = v)),
            const SizedBox(height: 8),
            _checkRow('Two-Factor Authentication (2FA)', _twoFA, (v) => setState(() => _twoFA = v)),
            const SizedBox(height: 40),
            TButton(label: 'Continue', onTap: () => Navigator.pushNamed(context, R.verifyEmail)),
          ]),
        ),
      ),
    );
  }

  Widget _checkRow(String label, bool val, ValueChanged<bool> onChange) {
    return GestureDetector(
      onTap: () => onChange(!val),
      child: Row(children: [
        Container(width: 18, height: 18, decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(3)),
          child: val ? const Icon(Icons.check, size: 12, color: AppColors.primary) : null),
        const SizedBox(width: 10),
        Text(label, style: const TextStyle(fontSize: 13, color: AppColors.textPrimary)),
      ]),
    );
  }
}

// ── Freelancer Signup ─────────────────────────────────────────────────────────
class FreelancerSignupScreen extends StatefulWidget {
  const FreelancerSignupScreen({super.key});
  @override
  State<FreelancerSignupScreen> createState() => _FreelancerSignupScreenState();
}

class _FreelancerSignupScreenState extends State<FreelancerSignupScreen> {
  String _field2 = '';
  String _level = '';
  String _avail = '';
  final List<String> _skills = ['UI Design', 'UX Design'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example'),
            const SizedBox(height: 16),
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example562@gmail.com', prefix: Icons.email_outlined),
            const SizedBox(height: 16),
            const Text('Professional Field', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            ...['Designer', 'Developer', 'Marketer', 'Project Manager', 'Content Creator', 'Other'].map((f) =>
              _radioRow(f, _field2, (v) => setState(() => _field2 = v))),
            const SizedBox(height: 16),
            const Text('Experience Level', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            ...['Beginner', 'Intermediate', 'Expert'].map((l) =>
              _radioRow(l, _level, (v) => setState(() => _level = v))),
            const SizedBox(height: 16),
            const Text('Availability', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            ...['Full Time', 'Part Time', 'Freelancer'].map((a) =>
              _radioRow(a, _avail, (v) => setState(() => _avail = v))),
            const SizedBox(height: 16),
            const Text('Primary Skills', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                Wrap(spacing: 6, children: _skills.map((s) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(20)),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(s, style: const TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(width: 4),
                    const Text('×', style: TextStyle(color: Colors.white, fontSize: 14)),
                  ]),
                )).toList()),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary),
              ]),
            ),
            const SizedBox(height: 24),
            TButton(label: 'Continue', onTap: () => Navigator.pushNamed(context, R.verifyEmail)),
          ]),
        ),
      ),
    );
  }

  Widget _radioRow(String label, String selected, ValueChanged<String> onSelect) {
    return GestureDetector(
      onTap: () => onSelect(label),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(children: [
          Container(width: 18, height: 18, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.primary, width: 2)),
            child: selected == label ? Center(child: Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle))) : null),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(fontSize: 14, color: AppColors.textPrimary)),
        ]),
      ),
    );
  }
}

// ── Student Signup ────────────────────────────────────────────────────────────
class StudentSignupScreen extends StatefulWidget {
  const StudentSignupScreen({super.key});
  @override
  State<StudentSignupScreen> createState() => _StudentSignupScreenState();
}

class _StudentSignupScreenState extends State<StudentSignupScreen> {
  String _team = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example'),
            const SizedBox(height: 16),
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _field(hint: 'example562@gmail.com', prefix: Icons.email_outlined),
            const SizedBox(height: 16),
            const Text('Current Level', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _dropdownField('Fourth year'),
            const SizedBox(height: 16),
            const Text('Major', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _dropdownField('Computer Science'),
            const SizedBox(height: 16),
            const Text('Primary Skills', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _dropdownField('Search', chips: ['Search', 'Communication']),
            const SizedBox(height: 16),
            const Text('Looking for a team?', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
            const SizedBox(height: 8),
            _radioRowSimple('Yes', _team, (v) => setState(() => _team = v)),
            _radioRowSimple('NO', _team, (v) => setState(() => _team = v)),
            const SizedBox(height: 24),
            TButton(label: 'Continue', onTap: () => Navigator.pushNamed(context, R.verifyEmail)),
          ]),
        ),
      ),
    );
  }

  Widget _dropdownField(String value, {List<String>? chips}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        if (chips != null) ...chips.map((c) => Container(
          margin: const EdgeInsets.only(right: 6),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(20)),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Text(c, style: const TextStyle(color: Colors.white, fontSize: 12)),
            const SizedBox(width: 4),
            const Text('×', style: TextStyle(color: Colors.white, fontSize: 14)),
          ]),
        ))
        else Text(value, style: const TextStyle(color: AppColors.primary, fontSize: 13, fontWeight: FontWeight.w500)),
        const Spacer(),
        const Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary),
      ]),
    );
  }

  Widget _radioRowSimple(String label, String selected, ValueChanged<String> onSelect) {
    return GestureDetector(
      onTap: () => onSelect(label),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(children: [
          Container(width: 18, height: 18, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.primary, width: 2)),
            child: selected == label ? Center(child: Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle))) : null),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(fontSize: 14, color: AppColors.textPrimary)),
        ]),
      ),
    );
  }
}

// ── Verify Email ──────────────────────────────────────────────────────────────
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            const Spacer(),
            Image.asset(
              'assets/images/verify_email.png',
              width: 240,
              height: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 28),
            const Text('Verify your email', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            const SizedBox(height: 8),
            const Text('A 6-digit code was sent to example*****@gmail.com', textAlign: TextAlign.center, style: TextStyle(color: AppColors.textSecondary, fontSize: 14)),
            const SizedBox(height: 32),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(6, (_) =>
              Container(
                width: 44, height: 52,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(10)),
              ),
            )),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: RichText(text: const TextSpan(
                text: "Didn't receive the code? ",
                style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
                children: [TextSpan(text: 'Resend', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold))],
              )),
            ),
            const Spacer(),
            TButton(label: 'Verify', onTap: () => Navigator.pushNamed(context, R.otpVerification)),
          ]),
        ),
      ),
    );
  }
}

// ── Forgot Password ───────────────────────────────────────────────────────────
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18, color: AppColors.textPrimary), onPressed: () => Navigator.pop(context)),
        title: const Text('Forgot Password', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        actions: [Row(children: [
          Container(width: 10, height: 10, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 16),
        ])],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(child: Image.asset('assets/images/forgot_password.png', height: 180, fit: BoxFit.contain)),
          const Center(child: Text('Forgot Password?', style: TextStyle(fontSize: 16, color: AppColors.textSecondary))),
          const SizedBox(height: 32),
          const Text('Your Email', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
          const SizedBox(height: 8),
          _field(hint: 'example562@gmail.com', prefix: Icons.email_outlined),
          const Spacer(),
          TButton(label: 'Got OTP', onTap: () => Navigator.pushNamed(context, R.otpVerification)),
        ]),
      ),
    );
  }
}

// ── OTP Verification ──────────────────────────────────────────────────────────
class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18, color: AppColors.textPrimary), onPressed: () => Navigator.pop(context)),
        title: const Text('OTP Verification', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        actions: [Row(children: [
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 16),
        ])],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          Image.asset('assets/images/otp_verification.png', height: 180, fit: BoxFit.contain),
          const SizedBox(height: 16),
          const Text('Enter OTP', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(4, (_) =>
            Container(width: 56, height: 60, margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(10)),
            ),
          )),
          const SizedBox(height: 16),
          const Text('Please enter the 4-digit code sent to:\nexample***@gmail.com', textAlign: TextAlign.center, style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {},
            child: RichText(text: const TextSpan(
              text: "Didn't receive the code? ",
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
              children: [TextSpan(text: 'Resend', style: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold))],
            )),
          ),
          const Spacer(),
          TButton(label: 'Verify', onTap: () => Navigator.pushNamed(context, R.createNewPassword)),
        ]),
      ),
    );
  }
}

// ── Create New Password ───────────────────────────────────────────────────────
class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18, color: AppColors.textPrimary), onPressed: () => Navigator.pop(context)),
        title: const Text('Create New Password', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        actions: [Row(children: [
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: BoxDecoration(color: AppColors.border, shape: BoxShape.circle)),
          const SizedBox(width: 4),
          Container(width: 10, height: 10, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
          const SizedBox(width: 16),
        ])],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(child: Image.asset('assets/images/create_new_password.png', height: 180, fit: BoxFit.contain)),
          const SizedBox(height: 24),
          const Text('New Password', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
          const SizedBox(height: 8),
          _field(hint: '••••••••••••••••••••', obscure: true),
          const SizedBox(height: 16),
          const Text('Confirm Password', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
          const SizedBox(height: 8),
          _field(hint: '••••••••••••••••••••', obscure: true),
          const Spacer(),
          TButton(label: 'Reset Password', onTap: () => Navigator.pushNamed(context, R.confirmationAdmin)),
        ]),
      ),
    );
  }
}

// ── Confirmation Admin ────────────────────────────────────────────────────────
class ConfirmationAdminScreen extends StatelessWidget {
  const ConfirmationAdminScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return _ConfirmationScreen(
      emoji: '💻🖥️',
      text: '"You now have full admin access."',
      onTap: () => Navigator.pushNamedAndRemoveUntil(context, R.adminHome, (_) => false),
    );
  }
}

// ── Confirmation Freelancer ───────────────────────────────────────────────────
class ConfirmationFreelancerScreen extends StatelessWidget {
  const ConfirmationFreelancerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return _ConfirmationScreen(
      emoji: '✅📄',
      text: '" Teams can now find you based\non yourself "',
      onTap: () => Navigator.pushNamedAndRemoveUntil(context, R.freelancerHome, (_) => false),
    );
  }
}

// ── Confirmation Student ──────────────────────────────────────────────────────
class ConfirmationStudentScreen extends StatelessWidget {
  const ConfirmationStudentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return _ConfirmationScreen(
      emoji: '👫✅',
      text: '" we will help you to find the the\nright project team"',
      onTap: () => Navigator.pushNamedAndRemoveUntil(context, R.studentHome, (_) => false),
    );
  }
}

class _ConfirmationScreen extends StatelessWidget {
  final String emoji, text;
  final VoidCallback onTap;
  const _ConfirmationScreen({required this.emoji, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            const Spacer(),
            Container(
              width: 220, height: 220,
              decoration: BoxDecoration(color: const Color(0xFFF5F5FA), borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text(emoji, style: const TextStyle(fontSize: 70))),
            ),
            const SizedBox(height: 32),
            Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, color: AppColors.primaryDark, height: 1.5, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
            const Spacer(),
            TButton(label: 'Go to Home', onTap: onTap),
            const SizedBox(height: 16),
          ]),
        ),
      ),
    );
  }
}
