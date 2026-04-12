import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/routing/app_router.dart';
import 'package:teamify/core/utils/validators.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_state.dart';
import 'package:teamify/features/auth/presentation/widgets/auth_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;

  final Color primaryTextColor = const Color(0xFF2E4E6E);
  final Color hintColor = const Color(0xFFAAB8C2);
  final Color borderColor = const Color(0xFFD1E1F0);

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // نادي على الـ Cubit لتغيير الباسورد
      context.read<ForgotPasswordCubit>().resetPassword(_passwordController.text.trim());
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
          if (state is ResetPasswordSuccess) {
            // لو نجح اظهر SnackBar واعمل clear للشاشات القديمة
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Password changed successfully! Please login."),
                backgroundColor: Colors.green,
              ),
            );
            // ارجع لشاشة الـ Login وامسح كل الشاشات اللي فوقها
            Navigator.pushNamedAndRemoveUntil(context, AppRouter.login, (route) => false);
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
                    // 👇 1. הـ AppBar + Stepper
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create New Password",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: primaryTextColor,
                          ),
                        ),
                        Row(
                          children: [
                            _buildStepperCircle(isActive: true),
                            const SizedBox(width: 8),
                            _buildStepperCircle(isActive: true),
                            const SizedBox(width: 8),
                            _buildStepperCircle(isActive: true),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // 👇 2. הـ Illustration
                    Center(
                      child: Image.asset(
                        "assets/images/ForgotPassword/3.png", // تأكد من المسار ده
                        height: 220,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // 👇 3. הـ TextFields
                    _buildTextField(
                      controller: _passwordController,
                      label: "New Password",
                      isObscured: _isPasswordObscured,
                      enabled: !isLoading,
                      prefixIcon: Icons.lock_outline,
                      onToggleVisibility: () {
                        setState(() => _isPasswordObscured = !_isPasswordObscured);
                      },
                      validator: (value) => Validators.validatePassword(value), // استخدم الـ Validator بتاعك
                    ),
                    const SizedBox(height: 25),
                    _buildTextField(
                      controller: _confirmPasswordController,
                      label: "Confirm Password",
                      isObscured: _isConfirmPasswordObscured,
                      enabled: !isLoading,
                      prefixIcon: Icons.lock_outline,
                      onToggleVisibility: () {
                        setState(() => _isConfirmPasswordObscured = !_isConfirmPasswordObscured);
                      },
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return "Passwords don't match";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 60),

                    // 👇 4. הـ Button
                    Center(
                      child: AuthButton(
                        text: "Reset Password",
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

  // ميثود مساعدة لرسم الـ TextField (شبه اللي عندك في الـ Login)
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required bool isObscured,
    bool enabled = true,
    IconData? prefixIcon,
    VoidCallback? onToggleVisibility,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
        ),
        const SizedBox(height: 12),
        TextFormField(
          controller: controller,
          obscureText: isObscured,
          enabled: enabled,
          validator: validator,
          decoration: InputDecoration(
            hintText: "********************",
            prefixIcon: Icon(prefixIcon, color: hintColor),
            suffixIcon: IconButton(
              icon: Icon(
                isObscured ? Icons.visibility_off : Icons.visibility,
                color: hintColor,
              ),
              onPressed: onToggleVisibility,
            ),
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
      ],
    );
  }
}