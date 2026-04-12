import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/tasks/domain/entities/task_entity.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_state.dart';

class AddTaskScreen extends StatefulWidget {
  final String projectId;
  final String projectName;

  const AddTaskScreen({
    super.key,
    required this.projectId,
    required this.projectName,
  });

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _titleController = TextEditingController();

  DateTime? selectedDate;
  bool _isLoading = false;

  // 🔥 AI Fields
  String? selectedUser;
  String? selectedPriority;

  // -------------------- AI MOCK --------------------
  Future<void> _autoAssign() async {
    if (_titleController.text.trim().isEmpty) {
      _showError("Enter task name first");
      return;
    }

    setState(() => _isLoading = true);

    await Future.delayed(const Duration(seconds: 1));

    final users = ["John Doe", "Alice", "Mike"];
    final random = Random();

    setState(() {
      selectedUser = users[random.nextInt(users.length)];

      // Priority logic
      if (_titleController.text.toLowerCase().contains("urgent")) {
        selectedPriority = "High";
      } else {
        selectedPriority = ["Low", "Medium", "High"][random.nextInt(3)];
      }

      selectedDate = DateTime.now().add(
        Duration(days: random.nextInt(4) + 2),
      );

      _isLoading = false;
    });
  }

  // -------------------- ADD TASK --------------------
  void _addTask() async {
    if (_titleController.text.trim().isEmpty) {
      _showError("Please enter task name");
      return;
    }

    if (selectedDate == null) {
      _showError("Please select a due date");
      return;
    }

    setState(() => _isLoading = true);

    final taskId = FirebaseFirestore.instance.collection('tasks').doc().id;

    final task = TaskEntity(
      id: taskId,
      title: _titleController.text.trim(),
      date: selectedDate!,
      delayPercent: Random().nextInt(40) + 50, // 🔥 Delay fake
      tag: widget.projectName,
      isCompleted: false,
      projectId: widget.projectId,
      projectName: widget.projectName,

      // 🔥 AI fields (لازم تضيفهم في entity)
      
      assignedUser: selectedUser ?? "Unassigned",
      priority: selectedPriority ?? "Medium",
    );

    await context.read<TaskCubit>().addTask(task);
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.red),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskCubit, TaskState>(
      listener: (context, state) {
        if (state is TaskSuccess) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Task added!"), backgroundColor: Colors.green),
          );
        } else if (state is TaskError) {
          setState(() => _isLoading = false);
          _showError(state.message);
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFBFDFF),
        appBar: AppBar(
          title: const Text("Add New Task",
              style: TextStyle(color: Color(0xFF345A81), fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xFF345A81)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: _containerDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel("Project"),
                Text(widget.projectName, style: _infoStyle()),
                const SizedBox(height: 25),

                _buildLabel("Task Name"),
                _buildTextField(),
                const SizedBox(height: 25),

                // 🔥 Auto Assign Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _autoAssign,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0D3B66),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: _isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text("Auto Assign (AI)",
                            style: TextStyle(color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 20),

                // 🔥 AI RESULT UI
                if (selectedUser != null) ...[
                  _buildLabel("Assigned To"),
                  Text(selectedUser!, style: _infoStyle()),
                  const SizedBox(height: 15),
                ],

                if (selectedPriority != null) ...[
                  _buildLabel("Priority"),
                  _buildPriorityBadge(selectedPriority!),
                  const SizedBox(height: 15),
                ],

                _buildLabel("Due Date"),
                _buildDatePicker(),
                const SizedBox(height: 40),

                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // -------------------- UI Widgets --------------------

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF345A81))),
    );
  }

  Widget _buildTextField() {
    return TextField(
      controller: _titleController,
      decoration: InputDecoration(
        hintText: "What needs to be done?",
        filled: true,
        fillColor: const Color(0xFFF4F7FB),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      ),
    );
  }

  Widget _buildDatePicker() {
    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );
        if (picked != null) {
          setState(() => selectedDate = picked);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(color: const Color(0xFFF4F7FB), borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate == null
                  ? "Pick a date"
                  : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              style: TextStyle(color: selectedDate == null ? Colors.grey : Colors.black87),
            ),
            const Icon(Icons.calendar_today_outlined, color: Color(0xFF345A81), size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _addTask,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF4384B6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: _isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : const Text("Create Task",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
      ),
    );
  }

  Widget _buildPriorityBadge(String priority) {
    Color color;
    if (priority == "High") {
      color = Colors.red;
    } else if (priority == "Medium") {
      color = Colors.orange;
    } else {
      color = Colors.green;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
      child: Text(priority,
          style: TextStyle(color: color, fontWeight: FontWeight.bold)),
    );
  }

  BoxDecoration _containerDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))
        ],
      );

  TextStyle _infoStyle() =>
      const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500);
}