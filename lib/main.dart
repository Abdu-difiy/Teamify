import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'core/routes.dart';

import 'screens/auth/auth_screens.dart';
import 'screens/home/home_screens.dart';
import 'screens/project/project_screens.dart';
import 'screens/chat/chat_screens.dart';
import 'screens/ai/ai_screens.dart';
import 'screens/profile/profile_screens.dart';
import 'screens/resume/resume_screens.dart';
import 'screens/admin/admin_screens.dart';
import 'screens/mentor/mentor_screens.dart';

void main() => runApp(const TeamifyApp());

class TeamifyApp extends StatelessWidget {
  const TeamifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teamify',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: R.splash,
      routes: {
        // ── Auth ──────────────────────────────────────────────────────────────
        R.splash:               (_) => const SplashScreen(),
        R.onboarding:           (_) => const OnboardingScreen(),
        R.roleSelection:        (_) => const RoleSelectionScreen(),
        R.login:                (_) => const LoginScreen(),
        R.signupAdmin:          (_) => const AdminSignupScreen(),
        R.signupFreelancer:     (_) => const FreelancerSignupScreen(),
        R.signupStudent:        (_) => const StudentSignupScreen(),
        R.verifyEmail:          (_) => const VerifyEmailScreen(),
        R.forgotPassword:       (_) => const ForgotPasswordScreen(),
        R.otpVerification:      (_) => const OTPVerificationScreen(),
        R.createNewPassword:    (_) => const CreateNewPasswordScreen(),
        R.confirmationAdmin:    (_) => const ConfirmationAdminScreen(),
        R.confirmationFreelancer: (_) => const ConfirmationFreelancerScreen(),
        R.confirmationStudent:  (_) => const ConfirmationStudentScreen(),

        // ── Home ─────────────────────────────────────────────────────────────
        R.freelancerHome:       (_) => const FreelancerHomeScreen(),
        R.studentHome:          (_) => const StudentHomeScreen(),
        R.adminHome:            (_) => const AdminHomeScreen(),
        R.search:               (_) => const SearchScreen(),
        R.notifications:        (_) => const NotificationsScreen(),
        R.settings:             (_) => const SettingsScreen(),
        R.addUser:              (_) => const AddUserScreen(),
        R.mentorMain:           (_) => const MentorMainScreen(),
        R.addTask:              (_) => const AddTaskScreen(),

        // ── Project ───────────────────────────────────────────────────────────
        R.projectDetails:       (_) => const ProjectDetailsScreen(),

        // ── Chat ─────────────────────────────────────────────────────────────
        R.chatList:             (_) => const ChatListScreen(),
        R.groupChat:            (_) => const GroupChatScreen(),
        R.directChat:           (_) => const DirectChatScreen(),
        R.chatSummary:          (_) => const ChatSummaryScreen(),
        R.pinnedMessages:       (_) => const PinnedMessagesScreen(),
        R.smartQA:              (_) => const SmartQAScreen(),
        R.fileSharing:          (_) => const FileSharingScreen(),
        R.fileIntegrity:        (_) => const FileIntegrityScreen(),
        R.meeting:              (_) => const MeetingScreen(),

        // ── AI ────────────────────────────────────────────────────────────────
        R.aiHub:                (_) => const MentorMainScreen(),
        R.smartTodo:            (_) => const SmartTodoScreen(),
        R.aiTaskAllocation:     (_) => const AITaskAllocationScreen(),
        R.aiSuggestedResult:    (_) => const AISuggestedResultScreen(),
        R.aiExplanation:        (_) => const AIExplanationScreen(),
        R.aiPriority:           (_) => const AIPriorityScreen(),
        R.aiDeadline:           (_) => const AIDeadlineScreen(),
        R.pomodoro:             (_) => const PomodoroScreen(),
        R.aiInsights:           (_) => const AIInsightsScreen(),
        R.aiMentor:             (_) => const AIMentorScreen(),
        R.aiMentorChat:         (_) => const CareerMentorChatScreen(),
        R.teamRecommendation:   (_) => const TeamRecommendationScreen(),
        R.recommendedCourses:   (_) => const RecommendedCoursesScreen(),
        R.skills:               (_) => const SkillsScreen(),

        // ── Profile ───────────────────────────────────────────────────────────
        R.freelancerProfile:    (_) => const FreelancerProfileScreen(),
        R.studentProfile:       (_) => const StudentProfileScreen(),
        R.adminProfile:         (_) => const AdminProfileScreen(),
        R.editProfile:          (_) => const EditProfileScreen(),
        R.completedProjects:    (_) => const CompletedProjectsScreen(),
        R.ratings:              (_) => const RatingsScreen(),
        R.performance:          (_) => const PerformanceScreen(),
        R.languageSwitch:       (_) => const LanguageSwitchScreen(),

        // ── Resume ────────────────────────────────────────────────────────────
        R.resumeCVStart:        (_) => const ResumeCVStartScreen(),
        R.resumeBuilder:        (_) => const ResumeBuilderScreen(),
        R.resumePreview:        (_) => const ResumePreviewScreen(),
        R.resumeEditContent:    (_) => const ResumeEditContentScreen(),
        R.resumeCustomize:      (_) => const ResumeCustomizeScreen(),
        R.resumeExportSuccess:  (_) => const ResumeExportSuccessScreen(),

        // ── Admin / Security ──────────────────────────────────────────────────
        R.adminUsers:           (_) => const AdminUsersScreen(),
        R.adminRoles:           (_) => const AdminRolesScreen(),
        R.securityChecklist:    (_) => const SecurityChecklistScreen(),
        R.loginLogs:            (_) => const LoginLogsScreen(),
        R.securityAlerts:       (_) => const SecurityAlertsScreen(),
        R.alertDetails:         (_) => const AlertDetailsScreen(),
        R.securityMonitor:      (_) => const SecurityMonitorScreen(),
        R.rateLimiting:         (_) => const RateLimitingScreen(),
        R.encryptionStatus:     (_) => const EncryptionStatusScreen(),
        R.twoFAStatus:          (_) => const TwoFAEnableScreen(),
        R.twoFAVerify:          (_) => const TwoFAVerifyScreen(),
        R.twoFASuccess:         (_) => const TwoFASuccessScreen(),
        R.analyst:              (_) => const AnalystScreen(),
        R.securityFiles:        (_) => const SecurityFilesScreen(),
        R.securityCenter:       (_) => const SecurityCenterScreen(),
        R.securityOverview:     (_) => const SecurityOverviewScreen(),
        R.forceLogout:          (_) => const ForceLogoutScreen(),
        R.logoutAllDevices:     (_) => const LogoutAllDevicesScreen(),
        R.reviewActivity:       (_) => const ReviewActivityScreen(),
        R.askAI:                (_) => const AskAIScreen(),
      },
    );
  }
}
