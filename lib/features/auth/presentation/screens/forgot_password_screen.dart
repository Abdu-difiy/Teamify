import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/routing/app_router.dart';
import 'package:teamify/core/utils/validators.dart'; // تأكد من المسار ده
import 'package:teamify/features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_state.dart';
import 'package:teamify/features/auth/presentation/widgets/auth_button.dart'; // تأكد من المسار ده

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  // الألوان دي يفضل تنقلها لـ core/constants/colors.dart
  final Color primaryTextColor = const Color(0xFF2E4E6E);
  final Color hintColor = const Color(0xFFAAB8C2);
  final Color borderColor = const Color(0xFFD1E1F0);

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // نادي على الـ Cubit لإرسال الـ OTP
      context.read<ForgotPasswordCubit>().sendOtp(_emailController.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: primaryTextColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          if (state is OtpSentSuccess) {
            // لو نجح، روح لشاشة الـ OTP وانقل معاك الإيميل
            Navigator.pushNamed(
              context,
              AppRouter.otpVerification,
              arguments: _emailController.text.trim(),
            );
          } else if (state is ForgotPasswordError) {
            // لو فشل اظهر SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message), backgroundColor: Colors.red),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state is ForgotPasswordLoading;

          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 👇 1. الـ AppBar + Stepper (الدواير الزرقاء)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryTextColor,
                          ),
                        ),
                        Row(
                          children: [
                            _buildStepperCircle(isActive: true),
                            const SizedBox(width: 8),
                            _buildStepperCircle(isActive: false),
                            const SizedBox(width: 8),
                            _buildStepperCircle(isActive: false),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // 👇 2. الـ Illustration
                    Center(
                      child: Image.asset(
                        "assets/images/ForgotPassword/1.png", // تأكد من المسار ده
                        height: 220,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // 👇 3. الـ TextField
                    Text(
                      "Your Email",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      enabled: !isLoading,
                      validator: (value) => Validators.validateEmail(value), // استخدم الـ Validator بتاعك
                      decoration: InputDecoration(
                        hintText: "example562@gmail.com",
                        prefixIcon: Icon(Icons.email_outlined, color: hintColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: borderColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: borderColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),

                    // 👇 4. الـ Button
                    Center(
                      child: AuthButton(
                        text: "Got OTP",
                        isLoading: isLoading,
                        onPressed: isLoading ? null : () => _submit(context),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // ميثود مساعدة لرسم الـ Stepper Circle
  Widget _buildStepperCircle({required bool isActive}) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFF4384B6) : const Color(0xFFD1E1F0),
      ),
    );
  }
}