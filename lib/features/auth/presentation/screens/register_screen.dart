import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/storage/token_storage.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final extraController = TextEditingController();

  String? role;

  @override
  void initState() {
    super.initState();
    loadRole();
  }

  Future<void> loadRole() async {
    final savedRole = await sl<TokenStorage>().getUserRole();
    setState(() {
      role = savedRole;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthCubit>(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Register")),
        body: role == null
            ? const Center(child: CircularProgressIndicator())
            : BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    Navigator.pushReplacementNamed(context, '/home');
                  }

                  if (state is AuthError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.message)),
                    );
                  }
                },
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [

                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              labelText: "Name",
                            ),
                          ),

                          const SizedBox(height: 16),

                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              labelText: "Email",
                            ),
                          ),

                          const SizedBox(height: 16),

                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Password",
                            ),
                          ),

                          const SizedBox(height: 16),

                          if (role == "Freelancer")
                            TextFormField(
                              controller: extraController,
                              decoration: const InputDecoration(
                                labelText: "Skills / Portfolio",
                              ),
                            ),

                          if (role == "Student")
                            TextFormField(
                              controller: extraController,
                              decoration: const InputDecoration(
                                labelText: "University",
                              ),
                            ),

                          const Spacer(),

                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: state is AuthLoading
                                  ? null
                                  : () {
                                      context.read<AuthCubit>().register(
                                        name: nameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        role: role!,
                                        extraField: extraController.text,
                                      );
                                    },
                              child: state is AuthLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : const Text("Register"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}