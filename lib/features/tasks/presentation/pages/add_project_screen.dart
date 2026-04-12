import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/home/presentation/home_screen.dart';
import 'package:teamify/features/projects/presentation/cubit/projects_cubit.dart';
import 'package:teamify/features/projects/presentation/screens/projects_screen.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  // Controllers لسحب البيانات من الحقول
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  String selectedStatus = "Active"; // القيمة الافتراضية للحالة
  bool showMembers = false; // التحكم في قائمة الأعضاء

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 82, 136),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF4384B6),
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Add New Project",
          style: TextStyle(
            color: Color(0xFF0D3B66),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel("Project Name"),
            _buildTextField("Enter Project Name", _nameController),

            const SizedBox(height: 20),
            _buildLabel("Description"),
            _buildTextField(
              "Enter Project Description",
              _descController,
              maxLines: 4,
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel("Start Date"),
                      _buildDatePicker("mm/dd/yyyy"),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel("End Date"),
                      _buildDatePicker("mm/dd/yyyy"),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            _buildLabel("Project Status"),
            Wrap(
              spacing: 8,
              children: ["Planned", "Active", "On Hold", "Completed"].map((
                status,
              ) {
                return _buildStatusChip(status);
              }).toList(),
            ),

            const SizedBox(height: 20),
            _buildLabel("Team Members"),
            _buildMembersSelector(),

            const SizedBox(height: 30),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  // --- Widgets البناء ---

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0D3B66),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String hint,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue.shade100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF4384B6)),
        ),
      ),
    );
  }

  Widget _buildDatePicker(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF4384B6).withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hint,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
          ),
          const Icon(
            Icons.calendar_month_outlined,
            size: 18,
            color: Color(0xFF4384B6),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    bool isSelected = selectedStatus == status;
    return ChoiceChip(
      label: Text(status),
      selected: isSelected,
      onSelected: (val) => setState(() => selectedStatus = status),
      selectedColor: const Color(0xFF4384B6).withOpacity(0.1),
      labelStyle: TextStyle(
        color: isSelected ? const Color(0xFF4384B6) : Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSelected ? const Color(0xFF4384B6) : Colors.grey.shade300,
        ),
      ),
    );
  }

  Widget _buildMembersSelector() {
    return Column(
      children: [
        InkWell(
          onTap: () => setState(() => showMembers = !showMembers),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFF4384B6)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.people_outline, color: Color(0xFF4384B6)),
                const SizedBox(width: 10),
                Text(
                  showMembers ? "Hide Members" : "Select Team Member",
                  style: const TextStyle(
                    color: Color(0xFF0D3B66),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showMembers)
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue.shade50),
            ),
            child: Column(
              children: [
                _memberTile("John Doe", "JD"),
                _memberTile("Alice Smith", "AS"),
                _memberTile("Mike Kumar", "MK"),
              ],
            ),
          ),
      ],
    );
  }

  Widget _memberTile(String name, String initial) {
    return ListTile(
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: const Color(0xFF4384B6),
        child: Text(
          initial,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 14, color: Color(0xFF3E5C76)),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_nameController.text.isNotEmpty) {
                context.read<ProjectsCubit>().addProject(
                  name: _nameController.text,
                  description: _descController.text,
                  status: selectedStatus,
                  startDate: DateTime.now(),
                  endDate: DateTime.now().add(const Duration(days: 30)),
                  members: ["John Doe", "Alice Smith"],
                );

                Navigator.pop(context); // العودة لشاشة المشاريع

                // 2. إظهار الـ SnackBar (باستخدام root navigator لضمان ظهورها)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Project Created Successfully!"),
                    backgroundColor: Color(0xFF4384B6),
                  ),
                );

                // 3. العودة للهوم وتصفير الـ Stack
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please enter a project name."),
                    backgroundColor: Colors.redAccent,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(
                0xFF4384B6,
              ), // اللون الأزرق البراند بتاعك
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Create Project",
              style: TextStyle(
                color: Colors.white, // خليها أبيض عشان تبان على الأزرق
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Navigator.pop(context),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: const BorderSide(color: Color(0xFF4384B6)),
            ),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Color(0xFF4384B6), fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
