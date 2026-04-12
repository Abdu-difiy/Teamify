import 'package:flutter/material.dart';
import 'package:teamify/features/home/presentation/widgets/project_card.dart';
import 'package:teamify/features/tasks/presentation/pages/add_project_screen.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool isShowingActive = true; // للتبديل بين Active و Complete

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Color(0xFF4384B6), size: 20),
        title: const Text("Projects", style: TextStyle(color: Color(0xFF0D3B66), fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search Projects....",
                prefixIcon: const Icon(Icons.search, color: Color(0xFF0D3B66)),
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)0)),
              ),
            ),
            const SizedBox(height: 20),
            // Custom Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTab("Active", isShowingActive, () => setState(() => isShowingActive = true)),
                const SizedBox(width: 10),
                _buildTab("Complete", !isShowingActive, () => setState(() => isShowingActive = false)),
              ],
            ),
            const SizedBox(height: 20),
            // Projects List
            Expanded(
              child: ListView(
                children: [
                  if (isShowingActive) ...[
                    // بيانات تجريبية مطابقة للصورة
                    ProjectCard(project: ProjectModel("Website Redesign", "Tech Crop", 75, "Jan, 15", "Low Risk")),
                    ProjectCard(project: ProjectModel("Mobile App Development", "Start UP", 45, "Jan, 20", "High Risk")),
                    ProjectCard(project: ProjectModel("Band Identity", "Fashion Crop", 90, "Jan, 10", "Low Risk")),
                  ] else ...[
                    ProjectCard(project: ProjectModel("Website Redesign", "Tech Crop", 100, "Jan, 15", "Low Risk")),
                    _buildNewProjectButton(context), // الزرار اللي في الصورة 3
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4384B6) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF4384B6)),
        ),
        child: Text(label, style: TextStyle(color: isSelected ? Colors.white : const Color(0xFF4384B6), fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildNewProjectButton(BuildContext context) {
          return ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddProjectScreen()),
              );
            },
            icon: const Icon(Icons.add, color: Colors.white),
            label: const Text("New Project", style: TextStyle(color: Colors.white)),
            // ... باقي الـ style
          );
        }
        }

// Model بسيط لتجربة الكود
class ProjectModel {
  final String name, client, date, risk;
  final int progress;
  ProjectModel(this.name, this.client, this.progress, this.date, this.risk);
}