import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:teamify/features/home/presentation/widgets/project_card.dart';
import 'package:teamify/features/tasks/presentation/pages/add_project_screen.dart';

import '../cubit/projects_cubit.dart';
import '../cubit/projects_state.dart';
import '../../domain/entities/project.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool isShowingActive = true;
  String searchQuery = "";

  @override
  void initState() {
    super.initState();
    context.read<ProjectsCubit>().fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF4384B6),
          size: 20,
        ),
        title: const Text(
          "Projects",
          style: TextStyle(
            color: Color(0xFF0D3B66),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4384B6),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddProjectScreen()),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // 🔍 SEARCH
            TextField(
              onChanged: (val) {
                setState(() {
                  searchQuery = val.toLowerCase();
                });
              },
              decoration: InputDecoration(
                hintText: "Search Projects...",
                prefixIcon: const Icon(Icons.search, color: Color(0xFF0D3B66)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔄 TABS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTab(
                  "Active",
                  isShowingActive,
                  () => setState(() => isShowingActive = true),
                ),
                const SizedBox(width: 10),
                _buildTab(
                  "Complete",
                  !isShowingActive,
                  () => setState(() => isShowingActive = false),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 📊 PROJECTS LIST
            Expanded(
              child: BlocBuilder<ProjectsCubit, ProjectsState>(
                builder: (context, state) {
                  final List<Project> projects = context
                      .read<ProjectsCubit>()
                      .projectsList;

                  if (state is ProjectsLoading && projects.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (projects.isEmpty) {
                    return const Center(child: Text("No Projects yet"));
                  }

                  // 🔍 FILTER
                  List<Project> filtered = projects.where((p) {
                    final matchesSearch = p.name.toLowerCase().contains(
                      searchQuery,
                    );

                    final isActive = (p.status ?? "Active") == "Active";

                    return matchesSearch &&
                        (isShowingActive ? isActive : !isActive);
                  }).toList();

                  if (filtered.isEmpty) {
                    return const Center(child: Text("No matching projects"));
                  }

                  return ListView.builder(
                    itemCount: filtered.length,
                    itemBuilder: (_, i) {
                      final Project projectItem = filtered[i];

                      return ProjectCard(project: projectItem);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =========================
  // 🔘 TAB WIDGET
  // =========================
  Widget _buildTab(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4384B6) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF4384B6)),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF4384B6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
