import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/routing/app_router.dart';
import 'package:teamify/features/auth/presentation/cubit/login_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isPasswordObscured = true;
  bool _rememberMe = false;

  // يفضل نقلها لـ core/constants/colors.dart
  final Color primaryTextColor = const Color(0xFF2E4E6E);
  final Color primaryButtonColor = const Color(0xFF4384B6);
  final Color borderColor = const Color(0xFFD1E1F0);
  final Color hintColor = const Color(0xFFAAB8C2);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submitLogin(BuildContext context) {
    FocusScope.of(context).unfocus(); // يقفل الكيبورد

    if (_formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// 👇 فصل الـ Listener عن الـ UI
      body: BlocListener<LoginCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushReplacementNamed(context, AppRouter.home);
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        },

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),

            /// 👇 UI فقط
            child: BlocBuilder<LoginCubit, AuthState>(
              builder: (context, state) {
                final isLoading = state is AuthLoading;

                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),

                      /// Logo
                      Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryTextColor,
                                  width: 4.5,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                'T',
                                style: TextStyle(
                                  fontSize: 58,
                                  fontWeight: FontWeight.w900,
                                  color: primaryTextColor,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -4,
                              right: -4,
                              child: Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF007BFF),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 50),

                      _buildLabel("Email"),
                      const SizedBox(height: 10),

                      _buildTextField(
                        controller: emailController,
                        hint: "example562@gmail.com",
                        prefixIcon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                        enabled: !isLoading,
                        validator: (value) {
                          if (value?.trim().isEmpty ?? true) {
                            return "Email is required";
                          }
                          if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value!)) {
                            return "Enter a valid email";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 25),

                      _buildLabel("Password"),
                      const SizedBox(height: 10),

                      _buildTextField(
                        controller: passwordController,
                        hint: "********************",
                        isPassword: true,
                        isObscured: _isPasswordObscured,
                        enabled: !isLoading,
                        prefixIcon: Icons.lock_outline,
                        onToggleVisibility: () {
                          setState(() {
                            _isPasswordObscured = !_isPasswordObscured;
                          });
                        },
                        validator: (value) {
                          if (value?.trim().isEmpty ?? true) {
                            return "Password is required";
                          }
                          if (value!.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 12),

                      /// Remember me + Forgot
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                activeColor: primaryButtonColor,
                                onChanged: isLoading
                                    ? null
                                    : (v) => setState(() => _rememberMe = v!),
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(color: hintColor),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: isLoading
                                ? null
                                : () => Navigator.pushNamed(
                                    context,
                                    AppRouter.forgotPassword,
                                  ),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(color: primaryButtonColor),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 35),

                      /// Login Button
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 52,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryButtonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: isLoading
                                ? null
                                : () => _submitLogin(context),
                            child: isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : const Text("Sign in"),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      /// OR Divider
                      Row(
                        children: [
                          Expanded(child: Divider(color: borderColor)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Or",
                              style: TextStyle(color: hintColor),
                            ),
                          ),
                          Expanded(child: Divider(color: borderColor)),
                        ],
                      ),

                      const SizedBox(height: 30),

                      /// Social Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _socialIconCard(
                            "assets/images/Icons/Google.png",
                            () => context.read<LoginCubit>().loginWithGoogle(),
                          ),
                          _socialIconCard(
                            "assets/images/Icons/Apple.png",
                            () => context.read<LoginCubit>().loginWithApple(),
                          ),
                          _socialIconCard(
                            "assets/images/Icons/Linkedin.png",
                            () =>
                                context.read<LoginCubit>().loginWithLinkedIn(),
                          ),
                          _socialIconCard(
                            "assets/images/Icons/Github.png",
                            () => context.read<LoginCubit>().loginWithGithub(),
                          ),
                        ],
                      ),

                      const SizedBox(height: 45),

                      /// Signup
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: hintColor),
                            children: [
                              TextSpan(
                                text: "Sign up",
                                style: TextStyle(
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      Navigator.pushNamed(context, '/signup'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// UI Helpers
  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primaryTextColor,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    IconData? prefixIcon,
    bool isPassword = false,
    bool isObscured = false,
    bool enabled = true,
    VoidCallback? onToggleVisibility,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isObscured,
      enabled: enabled,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  isObscured ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: onToggleVisibility,
              )
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Widget _socialIconCard(String assetPath, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Image.asset(assetPath),
        ),
      ),
    );
  }
}
