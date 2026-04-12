import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/routing/app_router.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/storage/token_storage.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import '../widgets/role_selector.dart'; // تأكد أن هذا الملف موجود
// import '../widgets/auth_button.dart'; // تأكد أن هذا الملف موجود
import '../widgets/freelancer_details_step.dart';
import '../widgets/student_details_step.dart';
import '../widgets/guest_details_step.dart';
import '../screens/success_page.dart'; // تأكد أن هذا الملف موجود

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  final int _totalSteps = 3;

  // --- 1. بيانات الحساب ---
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // --- 2. بيانات الرول ---
  String? selectedRole;

  // --- 3. بيانات التفاصيل الإضافية ---
  String? proField,
      expLevel,
      availability,
      studentLevel,
      studentMajor,
      joinReason;
  List<String> studentSkills = ["Flutter", "Dart"]; // قيم افتراضية للتجربة
  bool lookingForTeam = true;
  
  Map<String, dynamic>? get extraData => null;

  void _nextPage() {
    if (_currentStep < _totalSteps - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Step ${_currentStep + 1} of $_totalSteps",
          style: const TextStyle(
            color: Color(0xFF345A81),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: _previousPage,
        ),
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) async {
          if (state is AuthSuccess) {
            // Navigator.pushReplacementNamed(context, AppRouter.home);            String image = "";
            String msg = "";
            String image = "";

            if (selectedRole == "Student") {
              image = "assets/images/SignUp/1.png"; // الصورة الأولى
              msg = "We will help you to find the right project team";
            } else if (selectedRole == "Freelancer") {
              image = "assets/images/SignUp/2.png"; // الصورة الثانية
              msg = "Teams can now find you based on yourself";
            } else {
              image = "assets/images/SignUp/3.png"; // الصورة الثالثة
              msg = "You now have - view - only access";
            }

            // 3. الانتقال لصفحة النجاح بدل الهوم مباشرة
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    RegistrationSuccessScreen(imagePath: image, message: msg),
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              LinearProgressIndicator(
                value: (_currentStep + 1) / _totalSteps,
                backgroundColor: Colors.grey[200],
                color: const Color(0xFF4285B4),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) =>
                      setState(() => _currentStep = index),
                  children: [
                    _buildRoleStep(), // الخطوة 2
                    _buildDetailsStep(state), // الخطوة 3
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // --- الخطوة 2: اختيار الرول ---
  Widget _buildRoleStep() {
    return RoleSelector(
      // تأكد من مطابقة الـ Parameters في الـ Widget ده عندك
      selectedRole: selectedRole,
      onRoleSelected: (role) {
        setState(() => selectedRole = role);
        _nextPage();
      },
    );
  }

  // --- الخطوة 3: التفاصيل الديناميكية ---
  Widget _buildDetailsStep(AuthState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          if (selectedRole == "Student")
            StudentDetailsStep(
              nameController: nameController,
              emailController: emailController,
              passwordController: passwordController,
              confirmPasswordController: confirmPasswordController,
              currentLevel: studentLevel,
              major: studentMajor,
              selectedSkills: studentSkills,
              lookingForTeam: lookingForTeam,
              onLevelChanged: (val) => setState(() => studentLevel = val),
              onMajorChanged: (val) => setState(() => studentMajor = val),
              onLookingForTeamChanged: (val) =>
                  setState(() => lookingForTeam = val),
            )
          else if (selectedRole == "Freelancer")
            FreelancerDetailsStep(
              nameController: nameController,
              emailController: emailController,
              passwordController: passwordController,
              confirmPasswordController: confirmPasswordController,
              selectedField: proField,
              experienceLevel: expLevel,
              availability: availability,
              onFieldChanged: (val) => setState(() => proField = val),
              onExperienceChanged: (val) => setState(() => expLevel = val),
              onAvailabilityChanged: (val) =>
                  setState(() => availability = val),
              onContinue: () {}, // تم التعامل معها في زر الـ Finish بالأسفل
            )
          else
            GuestDetailsStep(
              nameController: nameController,
              passwordController: passwordController,
              confirmPasswordController: confirmPasswordController,
              reason: joinReason,
              onReasonChanged: (val) => setState(() => joinReason = val),
            ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4384B6),
              minimumSize: const Size(200, 50),
            ),
            onPressed: state is AuthLoading ? null : _handleFinalSubmit,
            child: state is AuthLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : const Text("Finish", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _handleFinalSubmit() {

    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        selectedRole == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }


    if (passwordController.text.isEmpty || confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter and confirm your password")),
      );
      return;
    }
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match")),
      );
      return;
    }
    if (passwordController.text.length < 6) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Password must be at least 6 characters")),
    );
    return;
  }

    context.read<AuthCubit>().register(
      name: nameController.text,
      email: emailController.text,
      // مرر قيمة ثابتة مؤقتاً للتجربة أو تأكد من جلبها من الخطوة 1
      password: passwordController.text,
      role: selectedRole!,
      extraData: extraData,
    );
  }

  // --- Helper Widgets ---
  Widget _buildLogo() => Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xFF345A81), width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    child: const Text(
      "T",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Color(0xFF345A81),
      ),
    ),
  );

  Widget _buildInputField(
    TextEditingController controller,
    String label,
    IconData icon, {
    bool isPassword = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: const Color(0xFF345A81)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
