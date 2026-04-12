import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/di/service_locator.dart';
import 'package:teamify/core/storage/token_storage.dart';
import 'package:teamify/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/login_cubit.dart';
import 'package:teamify/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:teamify/features/auth/presentation/screens/otp_screen.dart';
import 'package:teamify/features/auth/presentation/screens/register_screen.dart';
import 'package:teamify/features/auth/presentation/screens/login_screen.dart';
import 'package:teamify/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:teamify/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:teamify/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:teamify/features/projects/domain/entities/project.dart';
import 'package:teamify/features/projects/presentation/screens/project_details_screen.dart';
import 'package:teamify/features/projects/presentation/screens/projects_screen.dart';
import 'package:teamify/features/splash/presentation/screens/splash_screen.dart';
import 'package:teamify/features/home/presentation/home_screen.dart';
import 'package:teamify/features/tasks/domain/entities/task_entity.dart';
import 'package:teamify/features/tasks/presentation/pages/add_task_screen.dart';
import 'package:teamify/features/tasks/presentation/pages/task_details_screen.dart';
import 'package:teamify/features/tasks/presentation/pages/task_list_screen.dart';
import 'package:teamify/features/home/presentation/widgets/task_item.dart';

// ... (كل الـ imports اللي عندك فوق زي ما هي)

class AppRouter {
  static const String splash = '/';
  static const String login = '/login';
  static const String onboarding = '/onboarding';
  static const String chooseRole = '/chooseRole';
  static const String projects = '/projects';
  static const String home = '/home';
  static const String register = '/register';
  static const String addTask = '/add-task';
  static const String taskDetails = '/task-details';
  static const String projectDetails = '/project-details';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String otpVerification = '/otp-verification';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // ✅ Splash
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      // ✅ Login
      case login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      // ✅ Register
      case register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => sl<AuthCubit>(),
            child: RegisterScreen(),
          ),
        );

      // ✅ Onboarding
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // ✅ Choose Role
      case chooseRole:
        return MaterialPageRoute(builder: (_) => const ChooseRoleScreen());

      // ✅ Projects
      case projects:
        return MaterialPageRoute(builder: (_) => const ProjectsScreen());

      // ✅ Project Details
      case '/project-details':
        final project = settings.arguments as Project;
        return MaterialPageRoute(
          builder: (_) => ProjectDetailsScreen(project: project),
        );

      // ✅ Tasks List
      case '/tasks-list':
        final project = settings.arguments as Project;
        return MaterialPageRoute(
          builder: (_) => TasksListScreen(project: project),
        );

      // ✅ Home
      case home:
        return MaterialPageRoute(
          builder: (_) => FutureBuilder(
            future: sl<TokenStorage>().getUserRole(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                );
              }
              final role = snapshot.data ?? "Guest";
              return HomeScreen(role: role, userName: snapshot.data ?? "User");
            },
          ),
        );

      // ✅ Add Task (التصحيح هنا 🔥)
      case addTask:
        // بنستلم الـ arguments كـ Map عشان نبعت الـ ID والاسم مع بعض
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => AddTaskScreen(
            projectId: args['projectId'],
            projectName: args['projectName'],
          ),
        );

      // ✅ Task Details (التصحيح هنا 🔥)
      case taskDetails:
        final task = settings.arguments as TaskEntity;
        return MaterialPageRoute(
          builder: (_) => AddTaskScreen( // أو TaskDetailsScreen لو عندك صفحة تفاصيل منفصلة
            projectId: task.projectId,
            projectName: task.tag, // استخدمنا tag لأن الموديل بتاعك فيه tag مش projectName
          ),
        );

  // لازم الاسم ده يكون بالظبط هو اللي بتنادي عليه
case AppRouter.otpVerification: 
  return MaterialPageRoute(
    settings: settings, // مهم جدًا عشان نقدر نستلم الـ arguments (الإيميل)
    builder: (_) => BlocProvider.value(
      value: sl<ForgotPasswordCubit>(), 
      child: const OtpScreen(),
    ),
  );        // داخل switch (settings.name) في ملف app_router.dart

case forgotPassword:
  return MaterialPageRoute(
    builder: (_) => BlocProvider(
      create: (_) => sl<ForgotPasswordCubit>(),
      child:  ForgotPasswordScreen(), // الشاشة اللي فيها إدخال الإيميل
    ),
  );

case otpVerification:
  return MaterialPageRoute(
    builder: (_) => BlocProvider.value( // بنستخدم .value عشان نفضل على نفس الـ Cubit
      value: sl<ForgotPasswordCubit>(),
      child: const OtpScreen(), 
    ),
  );

case resetPassword:
  return MaterialPageRoute(
    builder: (_) => BlocProvider.value(
      value: sl<ForgotPasswordCubit>(),
      child: const ResetPasswordScreen(),
    ),
  );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text("No Route Found"))),
        );
    }
  }
}