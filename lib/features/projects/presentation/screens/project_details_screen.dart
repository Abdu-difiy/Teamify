import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/core/routing/app_router.dart';
import 'package:teamify/features/tasks/presentation/pages/delay_screen.dart';
import '../../../tasks/presentation/cubit/task_cubit.dart';
import '../../../tasks/presentation/cubit/task_state.dart';
import '../../domain/entities/project.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final Project project;

  const ProjectDetailsScreen({super.key, required this.project});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = [
    "Overview",
    "Tasks",
    "Files",
    "Chat",
    "Analytics",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. مراقبة الـ State بشكل آمن
    final taskState = context.watch<TaskCubit>().state;

    // 2. التحقق من الحالة قبل محاولة الوصول للتاسكات
    List<dynamic> projectTasks = [];
    if (taskState is TaskLoading && projectTasks.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    // 3. لو لسه بيحمل، ممكن نعرض Loading Screen كاملة أو نسيبه يعرض الهيدر فاضي
    if (taskState is TaskLoaded) {
      projectTasks = taskState.tasks
          .where((t) => t.projectId == widget.project.id)
          .toList();
    }

    // حساب النسبة بأمان (لو اللستة فاضية تبقى 0)
    double progress = projectTasks.isEmpty
        ? 0
        : projectTasks.where((t) => t.isCompleted).length / projectTasks.length;
    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFDFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0D3B66)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.project.name,
          style: const TextStyle(
            color: Color(0xFF0D3B66),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildTopHeader(
            projectTasks.isEmpty
                ? 0
                : projectTasks.where((t) => t.isCompleted).length /
                      projectTasks.length,
          ),
          const SizedBox(height: 10),
          _buildTabBar(),
          const SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildOverviewTab(
                  projectTasks.isEmpty
                      ? 0
                      : projectTasks.where((t) => t.isCompleted).length /
                            projectTasks.length,
                ), // ✅ تم تمرير البروجرس هنا
                _buildTasksTab(),
                const Center(child: Text("Files Tab")),
                const Center(child: Text("Chat Tab")),
                const DelayScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- Header Section ---
  Widget _buildTopHeader(double currentProgress) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D3B66),
            ),
          ),
          const Text(
            "Tech Crop",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Overall Process",
                style: TextStyle(color: Color(0xFF8A99AD)),
              ),
              Text(
                "${(currentProgress * 100).toInt()}%",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D3B66),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: currentProgress,
            backgroundColor: const Color(0xFFE1E8F0),
            color: const Color(0xFF4384B6),
            minHeight: 7,
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Text(
                "Delay Risk: ",
                style: TextStyle(color: Color(0xFF8A99AD), fontSize: 13),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F9F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Low Risk",
                  style: TextStyle(
                    color: Color(0xFF3AC89F),
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // --- TabBar Section ---
  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: const Color(0xFF8A99AD),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      indicator: BoxDecoration(
        color: const Color(0xFF0D3B66),
        borderRadius: BorderRadius.circular(25),
      ),
      tabs: _tabs
          .map(
            (tab) => Tab(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(tab),
              ),
            ),
          )
          .toList(),
    );
  }

  // --- 1. Overview Tab (تم إصلاحه) ---
  Widget _buildOverviewTab(double progress) {
    // final progress = context.watch<TaskCubit>().calculateProjectProgress(widget.project.id);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        _buildSectionHeader("Project Summary"),
        _buildSummaryCard(), // الميثود دي جواها widget.project.description

        const SizedBox(height: 24),
        _buildSectionHeader("AI Insights"),
        _buildAIInsightsCard(),

        const SizedBox(height: 24),
        _buildSectionHeader("Important Deadlines"),
        // عرض تواريخ حقيقية لو موجودة في الموديل
        _buildDeadlineItem(
          "Project Deadline",
          widget.project.endDate != null
              ? "${widget.project.endDate!.day}/${widget.project.endDate!.month}/${widget.project.endDate!.year}"
              : "No deadline",
        ),

        const SizedBox(height: 24),
        _buildSectionHeader("Team Members"),
        _buildTeamMembersCard(),

        const SizedBox(height: 40),

        // كارت النسبة المئوية بشكل جمالي
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF0D3B66).withOpacity(0.05),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xFF0D3B66).withOpacity(0.1)),
          ),
          child: Column(
            children: [
              const Text(
                "Current Progress",
                style: TextStyle(color: Color(0xFF8A99AD), fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                "${(progress * 100).toInt()}%",
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D3B66),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Project Completion Status",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // --- 2. Tasks Tab ---
  Widget _buildTasksTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE1E8F0)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.format_list_bulleted,
                      color: Color(0xFF4384B6),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.addTask,
                        arguments: {
                          'projectId': widget.project.id,
                          'projectName': widget.project.name,
                        },
                      );
                    },
                    icon: const Icon(Icons.add, size: 18, color: Colors.white),
                    label: const Text(
                      "Add Task",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4384B6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _FilterDropdown(label: "All Status"),
                    SizedBox(width: 8),
                    _FilterDropdown(label: "All People"),
                    SizedBox(width: 8),
                    _FilterDropdown(label: "All Priority"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              // 1. لو لسه بيحمل بيانات، اعرض علامة تحميل بدل ما يضرب Error
              if (state is TaskLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              // 2. فلترة التاسكات (دلوقتي السطر ده آمن لأنه مش هيتنفذ إلا لو مفيش Loading)
              final projectTasks = context
                  .read<TaskCubit>()
                  .tasksList
                  .where((t) => t.projectId == widget.project.id)
                  .toList();

              // 3. لو اللستة فاضية فعلاً بعد التحميل
              if (projectTasks.isEmpty) {
                return const Center(
                  child: Text("No tasks found. Click 'Add Task' to start!"),
                );
              }

              // 4. عرض البيانات لما تكون جاهزة
              return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: projectTasks.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.read<TaskCubit>().toggleTaskCompletion(
                      projectTasks[index],
                    );
                  },
                  child: _buildProjectTaskCard(projectTasks[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProjectTaskCard(dynamic task) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                task.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: const Color(0xFF0D3B66),
                  decoration: task.isCompleted
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              _buildSmallStatusBadge(
                task.isCompleted ? "Completed" : "In Progress",
                task.isCompleted
                    ? const Color(0xFFE8F5E9)
                    : const Color(0xFFE3F2FD),
                task.isCompleted ? Colors.green : const Color(0xFF2196F3),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.person_outline, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                "Assigned to: ${task.assignedUser ?? 'Unassigned'}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const Spacer(),
              _buildPriorityBadge(task.priority ?? 'Medium'),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Icon(
                Icons.warning_amber_rounded,
                size: 14,
                color: Colors.orange,
              ),
              const SizedBox(width: 5),
              Text(
                "Due: ${task.delayPercent ?? 0} % chance of delay",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSmallStatusBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildPriorityBadge(String priority) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        priority,
        style: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0D3B66),
        ),
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: Column(
        children: [
          _summaryRow(
            Icons.calendar_month_outlined,
            "Duration",
            "12/1/2024 - 15/1/2025",
          ),
          const Divider(height: 20),
          _summaryRow(Icons.person_outline, "Project Owner", "John Doe"),
          const Divider(height: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(color: Color(0xFF8A99AD), fontSize: 12),
              ),
              SizedBox(height: 4),
              Text(
                "Complete redesign of the company website with modern UI/UX principles and responsive design.",
                style: TextStyle(
                  color: Color(0xFF345A81),
                  fontSize: 13,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAIInsightsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: const Column(
        children: [
          _InsightRow(
            Icons.error_outline,
            Colors.red,
            "3 tasks at high risk of delay",
          ),
          SizedBox(height: 12),
          _InsightRow(
            Icons.check_circle_outline,
            Colors.green,
            "75% of milestones completed on time",
          ),
          SizedBox(height: 12),
          _InsightRow(
            Icons.show_chart,
            Colors.orange,
            "Overall delay probability: Medium",
          ),
        ],
      ),
    );
  }

  Widget _buildDeadlineItem(String title, String date) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                color: Color(0xFF0D3B66),
                size: 20,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xFF0D3B66),
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF4384B6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "Upcoming",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamMembersCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: Column(
        children: [
          _memberRow("John Doe", "Project Lead", "JD"),
          const Divider(height: 24),
          _memberRow("Alice Smith", "Designer", "AS"),
        ],
      ),
    );
  }

  BoxDecoration _cardStyle() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0xFFE1E8F0)),
    );
  }

  Widget _summaryRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 20, color: const Color(0xFF0D3B66)),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(color: Color(0xFF8A99AD), fontSize: 13),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF345A81),
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Widget _memberRow(String name, String role, String initial) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF0D3B66),
          radius: 18,
          child: Text(
            initial,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D3B66),
              ),
            ),
            Text(role, style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ],
    );
  }
}

class _InsightRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _InsightRow(this.icon, this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: color),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Color(0xFF345A81), fontSize: 14),
          ),
        ),
      ],
    );
  }
}

class _FilterDropdown extends StatelessWidget {
  final String label;
  const _FilterDropdown({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE1E8F0)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Color(0xFF345A81)),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 16,
            color: Color(0xFF345A81),
          ),
        ],
      ),
    );
  }
}
