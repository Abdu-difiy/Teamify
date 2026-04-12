import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:teamify/features/projects/domain/usecases/get_projects_usecase.dart';
import 'package:teamify/features/projects/presentation/screens/project_details_screen.dart'; 
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

  @override
  void initState() {
    super.initState();
    // بننادي التاسكات عادي
    context.read<TaskCubit>().getHomeTasks();
    
    // 🔥 التعديل الأهم: لو الكيوبيت فيه مشاريع فعلاً، متعملش fetch وتصفرها
    // final projectsCubit = context.read<ProjectsCubit>();
    // if (projectsCubit.state is! ProjectsLoaded) {
    //   projectsCubit.fetchProjects();
    // }
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      _buildHomeContent(),
      const ProjectsScreen(),
      const Center(child: Text("Tasks Screen")), 
      const Center(child: Text("Chat Screen")),
      const Center(child: Text("Profile Screen")),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }
                 Widget _buildHomeContent() {
  return SafeArea(
    child: RefreshIndicator(
      onRefresh: () async {
        context.read<TaskCubit>().getHomeTasks();
        context.read<ProjectsCubit>().fetchProjects();
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            const SizedBox(height: 25),

            // ✅ رجعنا الـ Stats مكانها وخليناها ديناميكية
            BlocBuilder<TaskCubit, TaskState>(
              builder: (context, state) {
                final allTasks = context.read<TaskCubit>().tasksList;
                return Row(
                  children: [
                    _statCard("Total Tasks", allTasks.length.toString()),
                    _statCard("Tasks Due Today", allTasks.where((t) => _isToday(t.date)).length.toString()),
                    _statCard("Overdue Tasks", "0"), // تقدر تعدلها لاحقاً
                  ],
                );
              },
            ),

            const SizedBox(height: 30),

            // ✅ قسم التاسكات (Tasks Due Soon)
            const Text("Tasks Due Soon",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66))),
            const SizedBox(height: 15),
            
            BlocBuilder<TaskCubit, TaskState>(
              builder: (context, state) {
                final allTasks = context.read<TaskCubit>().tasksList;

                if (allTasks.isNotEmpty) {
                  return Column(
                    children: allTasks.take(3).map((t) => _buildTaskCard(t)).toList(),
                  );
                } 

                if (state is TaskLoading && allTasks.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }

                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("No tasks due soon", style: TextStyle(color: Colors.grey)),
                );
              },
            ),

            const SizedBox(height: 30),

            // ✅ قسم المشاريع (Active Projects)
            const Text("Active Projects",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66))),
            const SizedBox(height: 15),
            SizedBox(
              height: 170,
              child: BlocBuilder<ProjectsCubit, ProjectsState>(
                // 🔥 السطر ده بيضمن إن الـ UI ميفضاش لما الحالة تبقى Success
                buildWhen: (prev, current) => current is ProjectsLoaded || current is ProjectsLoading,
                builder: (context, state) {
                  // ✅ هات اللستة من الـ Cubit بس اتأكد إن الـ Builder شغال بالـ state
                  final projects = context.read<ProjectsCubit>().projectsList;

                  if (state is ProjectsLoading && projects.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (projects.isEmpty) return const Center(child: Text("No Projects yet"));

                 return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    final project = projects[index];
                    // تأكد إن _buildProjectCard بياخد الـ project كـ Object
                    return _buildProjectCard(project);
                  },
              );
                },
              ),
            ),
            
            const SizedBox(height: 30),
            
            // ✅ قسم النشاطات (Recent Activity)
            const Text("Recent Activity",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66))),
            const SizedBox(height: 15),
            _activityItem(Icons.check_circle_outline, Colors.blue.shade100, "You completed Assignment: Flutter UI", "1 hour ago"),
            _activityItem(Icons.cloud_upload_outlined, Colors.blue.shade50, "Teamify project updated", "2 hours ago"),
          ],
        ),
      ),
    ),
  );
}

  // --- Widgets البناء الفرعية ---

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Hi, ${widget.userName} 👋",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66))),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFEAF3FB),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(widget.role, style: const TextStyle(color: Color(0xFF4384B6), fontWeight: FontWeight.w600)),
        )
      ],
    );
  }

  Widget _statCard(String title, String value) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blue.shade200, width: 1),
        ),
        child: Column(
          children: [
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 11, color: Colors.grey.shade600)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66))),
          ],
        ),
      ),
    );
  }

Widget _buildProjectCard(dynamic project) {
  return InkWell(
    onTap: () {
      // 🔥 الانتقال لصفحة التفاصيل مع تمرير بيانات المشروع
      Navigator.pushNamed(
        context,
        '/project-details',
        arguments: project,
      );
    },
    borderRadius: BorderRadius.circular(15), // عشان تأثير الضغطة ميعملش "border" حاد
    child: Container(
      width: 160,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.name,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0D3B66)),
            maxLines: 1, // عشان الاسم ميكسرش السطر لو طويل
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: (project.progress ?? 0) / 100,
            backgroundColor: Colors.grey.shade100,
            color: const Color(0xFF4384B6),
            minHeight: 6,
          ),
          const SizedBox(height: 5),
          Text("${project.progress ?? 0}% complete", style: const TextStyle(fontSize: 11, color: Colors.grey)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildMiniAvatars(),
              _buildSmallBadge(project.status ?? "Active", Colors.orange.shade50, Colors.orange),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _buildTaskCard(TaskEntity task) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: const Color(0xFFE1E8F0)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.info_outline, color: Color(0xFF4384B6), size: 20),
        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Title
              Text(
                task.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D3B66),
                ),
              ),

              const SizedBox(height: 6),

              // 🔹 Assigned User
              Text(
                "Assigned to: ${task.assignedUser ?? "Unassigned"}",
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),

              const SizedBox(height: 8),

              // 🔹 Chips Row
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  // Delay
                  _buildStatusChip(
                    "${task.delayPercent ?? 0}% delay",
                    Colors.orange.shade50,
                    Colors.orange,
                  ),

                  // Project Tag
                  _buildStatusChip(
                    task.tag,
                    Colors.grey.shade100,
                    Colors.grey.shade700,
                  ),

                  // Priority
                  _buildPriorityChip(task.priority ?? "Medium"),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildPriorityChip(String priority) {
  Color color;

  switch (priority) {
    case "High":
      color = Colors.red;
      break;
    case "Medium":
      color = Colors.orange;
      break;
    default:
      color = Colors.green;
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      priority,
      style: TextStyle(
        color: color,
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}


// ميثود مساعدة لشكل الـ Chip
Widget _buildStatusChip(String label, Color bgColor, Color textColor) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
    child: Text(label, style: TextStyle(fontSize: 10, color: textColor, fontWeight: FontWeight.w500)),
  );
}
// دالة مساعدة للـ Badges الصغيره
Widget _buildSmallBadge(String text, Color bg, Color textCol) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(8)),
    child: Text(text, style: TextStyle(fontSize: 11, color: textCol, fontWeight: FontWeight.w500)),
  );
}

  Widget _buildMiniAvatars() {
    return const SizedBox(
      width: 40,
      height: 20,
      child: Stack(
        children: [
          CircleAvatar(radius: 10, backgroundColor: Colors.blue),
          Positioned(left: 12, child: CircleAvatar(radius: 10, backgroundColor: Colors.red)),
        ],
      ),
    );
  }

  Widget _activityItem(IconData icon, Color bgColor, String title, String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: bgColor, child: Icon(icon, color: const Color(0xFF4384B6), size: 20)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, color: Color(0xFF3E5C76), fontWeight: FontWeight.w500)),
                Text(time, style: TextStyle(fontSize: 12, color: Colors.grey.shade500)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF0D3B66),
      unselectedItemColor: Colors.grey.shade400,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined), label: "Projects"),
        BottomNavigationBarItem(icon: Icon(Icons.check_box_outlined), label: "Tasks"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
      ],
    );
  }
}