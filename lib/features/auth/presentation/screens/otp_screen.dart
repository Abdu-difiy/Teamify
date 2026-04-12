import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart'; // المكتبة السحرية
import 'package:teamify/core/routing/app_router.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_state.dart';
import 'package:teamify/features/auth/presentation/widgets/auth_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _pinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final Color primaryTextColor = const Color(0xFF2E4E6E);
  final Color hintColor = const Color(0xFFAAB8C2);

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // نادي على الـ Cubit للتأكد من الـ OTP
      context.read<ForgotPasswordCubit>().verifyOtp(_pinController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    // بنستلم الإيميل من الـ arguments عشان نظهره
    final email = ModalRoute.of(context)!.settings.arguments as String;

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
          if (state is OtpVerificationSuccess) {
            // لو نجح، روح لشاشة تغيير الباسورد
            Navigator.pushNamed(context, AppRouter.resetPassword);
          } else if (state is ForgotPasswordError) {
            // لو فشل اظهر SnackBar واعمل clear للـ pin
            _pinController.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message), backgroundColor: Colors.red),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state is ForgotPasswordLoading;

          // 👇 تصميم الـ Pinput (المربعات)
          final defaultPinTheme = PinTheme(
            width: 56,
            height: 56,
            textStyle: TextStyle(
              fontSize: 22,
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFD1E1F0)),
            ),
          );

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
                          "OTP Verification",
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
                            _buildStepperCircle(isActive: true),
                            const SizedBox(width: 8),
                            _buildStepperCircle(isActive: false),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // 👇 2. הـ Illustration
                    Center(
                      child: Image.asset(
                        "assets/images/ForgotPassword/2.png", // تأكد من المسار ده
                        height: 220,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // 👇 3. הـ Pinput + Text
                    Center(
                      child: Text(
                        "Enter OTP",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child: Pinput(
                        length: 4,
                        controller: _pinController,
                        defaultPinTheme: defaultPinTheme,
                        enabled: !isLoading,
                        validator: (v) {
                          if (v?.length != 4) return "Enter 4 digits";
                          return null;
                        },
                        onCompleted: (pin) {
                          // نادي على الـ Cubit أوتوماتيك لما يخلص
                          _submit(context);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Please enter the 4-digit code sent to:\n",
                          style: TextStyle(color: hintColor, fontSize: 13),
                          children: [
                            TextSpan(
                              text: email, // الإيميل الحقيقي
                              style: TextStyle(
                                color: primaryTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // 👇 4. הـ Resend Link
                    Center(
                      child: TextButton(
                        onPressed: isLoading
                            ? null
                            : () => context.read<ForgotPasswordCubit>().sendOtpUseCase(email),
                        child: Text(
                          "Didn't receive the code? Resend",
                          style: TextStyle(
                            color: const Color(0xFF4384B6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),

                    // 👇 5. הـ Button
                    Center(
                      child: AuthButton(
                        text: "Verify",
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