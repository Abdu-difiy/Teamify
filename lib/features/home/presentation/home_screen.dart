import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/ai/presentation/screens/ai_assistant_screen.dart';
import 'package:teamify/features/projects/domain/entities/project.dart';
import 'package:teamify/features/projects/presentation/screens/project_details_screen.dart';
import 'package:teamify/features/tasks/presentation/pages/insights_screen.dart';
import '../../tasks/presentation/cubit/task_cubit.dart';
import '../../tasks/presentation/cubit/task_state.dart';
import '../../tasks/domain/entities/task_entity.dart';
import '../../projects/presentation/cubit/projects_cubit.dart';
import '../../projects/presentation/cubit/projects_state.dart';
import '../../projects/presentation/screens/projects_screen.dart';

class HomeScreen extends StatefulWidget {
  final String userName;
  final String role;

  const HomeScreen({super.key, required this.userName, required this.role});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final Color primaryColor = const Color(0xFF0D3B66);
  final Color scaffoldBg = const Color(0xFFFBFDFF);

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    context.read<TaskCubit>().getHomeTasks();
    context.read<ProjectsCubit>().fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      _buildHomeContent(),
      const ProjectsScreen(),
      const InsightsScreen(),
      // const Center(child: Text("Tasks Screen")),
      const Center(child: Text("Chat Screen")),
      const Center(child: Text("Profile Screen")),
      
    ];

    return Scaffold(
      backgroundColor: scaffoldBg,
      body: IndexedStack(index: _selectedIndex, children: pages),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildHomeContent() {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async => _loadData(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildHeader(),
              const SizedBox(height: 25),
              _buildQuickStats(),
              const SizedBox(height: 30),
              _buildTasksSection(),
              const SizedBox(height: 30),
              _buildProjectsSection(),
              const SizedBox(height: 30),
              _buildRecentActivitySection(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // --- Header ---
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hi, ${widget.userName}",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(width: 5),
                const Text("👋", style: TextStyle(fontSize: 24)),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            widget.role,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  // --- Quick Stats ---
  Widget _buildQuickStats() {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        final cubit = context.read<TaskCubit>();
        return Row(
          children: [
            _statCard("Total Tasks", "${cubit.tasksList.length}"),
            const SizedBox(width: 10),
            _statCard("Tasks Due Today", "5"), // Placeholder logic
            const SizedBox(width: 10),
            _statCard("Overdue Tasks", "${cubit.lateTasks.length}"),
          ],
        );
      },
    );
  }

  Widget _statCard(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blue.shade200, width: 1),
        ),
        child: Column(
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, color: Colors.blueGrey.shade600),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Tasks Section ---
  Widget _buildTasksSection() {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        final tasks = context.read<TaskCubit>().tasksList.take(3).toList();
        return Column(
          children: tasks.map((task) => _buildTaskItem(task)).toList(),
        );
      },
    );
  }

  Widget _buildTaskItem(TaskEntity task) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.info_outline, color: Colors.blue, size: 20),
              const SizedBox(width: 8),
              Text(
                task.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 4),
            child: Text(
              "Due Dec 12, 2025",
              style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildTag(
                "70% chance of delay",
                Colors.blue.shade50,
                Colors.blue.shade700,
              ),
              const SizedBox(width: 10),
              _buildTag("Design System", Colors.grey.shade100, Colors.blueGrey),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color bg, Color textCol) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textCol,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // --- Projects Section ---
  Widget _buildProjectsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Active Projects",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 130,
          child: BlocBuilder<ProjectsCubit, ProjectsState>(
            builder: (context, state) {
              final projects = context.read<ProjectsCubit>().projectsList;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index] as Project;

                  return _buildProjectCard(project);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  // ✅ التعديل الجديد لكارت المشروع مع الـ Navigation
  Widget _buildProjectCard(dynamic project) {
    return GestureDetector(
      onTap: () {
        // الانتقال لصفحة التفاصيل اللي في الـ Architecture بتاعتك
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectDetailsScreen(project: project),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 15, bottom: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blue.shade100, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.name ?? "Untitled Project",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            // عرض النسبة المئوية %
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Progress",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "75%",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.75, // هنا هتحط النسبة الحقيقية من الداتا
              backgroundColor: Colors.blue.shade50,
              color: Colors.blue,
              minHeight: 6,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
      ),
    );
  }

  // --- Activity Section ---
  Widget _buildRecentActivitySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Activity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 15),
        _activityItem(
          Icons.check_circle_outline,
          "You completed Assignment: React Fundamentals",
          "3 hours ago",
          Colors.blue,
        ),
        _activityItem(
          Icons.file_upload_outlined,
          "Sara uploaded Lab Report 5",
          "5 hours ago",
          Colors.blue,
        ),
        _activityItem(
          Icons.person_add_outlined,
          "${widget.userName} joined Team: Mobile Development",
          "1 day ago",
          Colors.blue,
        ),
      ],
    );
  }

  Widget _activityItem(IconData icon, String title, String time, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- Bottom Nav ---
  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (i) => setState(() => _selectedIndex = i),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.blueGrey.shade300,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_outlined),
          activeIcon: Icon(Icons.folder),
          label: "Projects",
        ), // Custom logic for Projects
        BottomNavigationBarItem(
          icon: Icon(Icons.check_box_outlined),
          label: "Tasks",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }
}
