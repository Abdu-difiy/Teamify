import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/routes.dart';
import '../../data/dummy_data.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({super.key});
  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> with SingleTickerProviderStateMixin {
  late TabController _tab;
  ProjectModel get _project => DummyData.projects.first;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 5, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    final p = ModalRoute.of(context)?.settings.arguments is ProjectModel
        ? ModalRoute.of(context)!.settings.arguments as ProjectModel
        : _project;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back_ios, size: 18, color: AppColors.textPrimary)),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(p.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                  Text(p.company, style: const TextStyle(color: AppColors.textSecondary, fontSize: 13)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text('Overall Process', style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                      const Spacer(),
                      Text('${p.progress}%', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.primary)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  TBar(value: p.progress / 100),
                  const SizedBox(height: 8),
                  Row(children: [
                    const Text('Delay Risk: ', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                    TChip(label: p.delayRisk,
                        bg: p.delayRisk.contains('Low') ? AppColors.success.withOpacity(0.1) : AppColors.warning.withOpacity(0.1),
                        textColor: p.delayRisk.contains('Low') ? AppColors.success : AppColors.warning),
                  ]),
                  const SizedBox(height: 12),
                  TabBar(
                    controller: _tab,
                    isScrollable: true,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.textSecondary,
                    indicatorColor: AppColors.primary,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                    tabs: const [Tab(text: 'Overview'), Tab(text: 'Tasks'), Tab(text: 'Chat'), Tab(text: 'Files'), Tab(text: 'Analytics')],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tab,
                children: [
                  _OverviewTab(project: p),
                  _TasksTab(project: p),
                  _ChatTab(),
                  _FilesTab(),
                  _AnalyticsTab(project: p),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TBottomNav(current: 0, onTap: (i) => handleFreelancerNav(context, i)),
    );
  }

  void _showEditProject(BuildContext context, ProjectModel p) {
    showModalBottomSheet(context: context, isScrollControlled: true, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))), builder: (ctx) => Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(ctx).viewInsets.bottom + 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
        const Text('Edit Project Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        TextField(controller: TextEditingController(text: p.name), decoration: const InputDecoration(labelText: 'Project Name', border: OutlineInputBorder())),
        const SizedBox(height: 12),
        TextField(controller: TextEditingController(text: p.description), maxLines: 3, decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder())),
        const SizedBox(height: 20),
        TButton(label: 'Save Changes', onTap: () { Navigator.pop(context); ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Project updated successfully!'))); }),
      ]),
    ));
  }

  void _showConfirm(BuildContext context, String title, String msg, VoidCallback onConfirm, {bool isDestructive = false}) {
    showDialog(context: context, builder: (ctx) => AlertDialog(
      title: Text(title), content: Text(msg),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
        TextButton(onPressed: () { Navigator.pop(ctx); onConfirm(); }, child: Text(isDestructive ? 'Delete' : 'Confirm', style: TextStyle(color: isDestructive ? Colors.red : AppColors.primary))),
      ],
    ));
  }
}

// ── Overview Tab ──────────────────────────────────────────────────────────────
class _OverviewTab extends StatelessWidget {
  final ProjectModel project;
  const _OverviewTab({required this.project});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TCard(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Description', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          const SizedBox(height: 8),
          Text(project.description, style: const TextStyle(color: AppColors.textSecondary, fontSize: 13)),
        ])),
        const SizedBox(height: 12),
        TCard(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Team Members', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          const SizedBox(height: 12),
          ...project.members.map((m) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(children: [
                  TAvatar(initials: m.split(' ').map((w) => w[0]).take(2).join(), radius: 18),
                  const SizedBox(width: 10),
                  Text(m, style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
                ]),
              )),
        ])),
        const SizedBox(height: 12),
        Row(children: [
          Expanded(child: TCard(child: Column(children: [
            Text('${project.tasks.where((t) => t.status == 'Complete').length}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.primary)),
            const Text('Completed', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          ]))),
          const SizedBox(width: 12),
          Expanded(child: TCard(child: Column(children: [
            Text('${project.tasks.where((t) => t.status == 'In Progress').length}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.warning)),
            const Text('In Progress', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          ]))),
          const SizedBox(width: 12),
          Expanded(child: TCard(child: Column(children: [
            Text('${project.tasks.where((t) => t.status == 'To Do').length}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textSecondary)),
            const Text('To Do', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          ]))),
        ]),
      ],
    );
  }
}

// ── Tasks Tab ─────────────────────────────────────────────────────────────────
class _TasksTab extends StatelessWidget {
  final ProjectModel project;
  const _TasksTab({required this.project});

  Color _statusColor(String s) => s == 'Complete' ? AppColors.success : s == 'In Progress' ? AppColors.primary : AppColors.textSecondary;
  Color _priorityColor(String p) => p == 'High' ? AppColors.error : p == 'Medium' ? AppColors.warning : AppColors.textSecondary;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Filter settings opened'))),
              child: Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(10)), child: const Icon(Icons.filter_list, size: 18, color: AppColors.textSecondary)),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, R.addTask),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(20)),
                child: const Row(children: [Icon(Icons.add, color: Colors.white, size: 16), SizedBox(width: 4), Text('Add Task', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13))]),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(children: [
          _filterDrop(context, 'All Status', ['All', 'To Do', 'In Progress', 'Complete']), const SizedBox(width: 8),
          _filterDrop(context, 'All People', ['All', 'Alice Smith', 'John Doe', 'Mike Kumar']), const SizedBox(width: 8),
          _filterDrop(context, 'All Priority', ['All', 'High', 'Medium', 'Low']),
        ]),
        const SizedBox(height: 12),
        ...project.tasks.map((t) => TCard(
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(t.title, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary))),
                      TChip(label: t.status, bg: _statusColor(t.status).withOpacity(0.1), textColor: _statusColor(t.status)),
                      const SizedBox(width: 6),
                      TChip(label: t.priority, bg: _priorityColor(t.priority).withOpacity(0.1), textColor: _priorityColor(t.priority)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      TAvatar(initials: t.assigneeInitials, radius: 12, bg: AppColors.primary),
                      const SizedBox(width: 6),
                      Text(t.assignee, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                      const Spacer(),
                      const Icon(Icons.calendar_today_outlined, size: 12, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text(t.dueDate, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _filterDrop(BuildContext context, String label, List<String> options) => Expanded(
        child: PopupMenuButton<String>(
          onSelected: (v) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Filter: $v'))),
          itemBuilder: (ctx) => options.map((o) => PopupMenuItem(value: o, child: Text(o, style: const TextStyle(fontSize: 13)))).toList(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColors.border)),
            child: Row(children: [
              Expanded(child: Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textSecondary), overflow: TextOverflow.ellipsis)),
              const Icon(Icons.keyboard_arrow_down, size: 14, color: AppColors.textSecondary),
            ]),
          ),
        ),
      );
}

// ── Chat Tab ──────────────────────────────────────────────────────────────────
class _ChatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, R.groupChat),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: DummyData.groupMessages.length,
        itemBuilder: (_, i) {
          final m = DummyData.groupMessages[i];
          return _ChatBubble(msg: m);
        },
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final dynamic msg;
  const _ChatBubble({required this.msg});
  @override
  Widget build(BuildContext context) {
    final isMe = msg.isMe as bool;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMe) ...[TAvatar(initials: msg.senderInitials as String, radius: 16), const SizedBox(width: 8)],
          Flexible(
            child: Column(
              crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (!isMe) Text(msg.senderName as String, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                const SizedBox(height: 2),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: isMe ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: isMe ? null : Border.all(color: AppColors.border),
                  ),
                  child: Text(msg.message as String, style: TextStyle(color: isMe ? Colors.white : AppColors.textPrimary, fontSize: 13)),
                ),
                const SizedBox(height: 2),
                Text(msg.time as String, style: const TextStyle(fontSize: 10, color: AppColors.textSecondary)),
              ],
            ),
          ),
          if (isMe) ...[const SizedBox(width: 8), TAvatar(initials: 'AS', radius: 16)],
        ],
      ),
    );
  }
}

// ── Files Tab ─────────────────────────────────────────────────────────────────
class _FilesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: DummyData.projectFiles.map((f) => TCard(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.insert_drive_file_outlined, color: AppColors.primary, size: 22)),
                const SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(f.name, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 13)),
                  Text('${f.size} • ${f.uploadedBy}', style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                ])),
                TChip(label: f.status, bg: f.status == 'Verified' ? AppColors.success.withOpacity(0.1) : AppColors.warning.withOpacity(0.1),
                    textColor: f.status == 'Verified' ? AppColors.success : AppColors.warning),
              ],
            ),
          )).toList(),
    );
  }
}

// ── Analytics Tab ─────────────────────────────────────────────────────────────
class _AnalyticsTab extends StatelessWidget {
  final ProjectModel project;
  const _AnalyticsTab({required this.project});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TCard(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Task Completion Rate', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          const SizedBox(height: 16),
          SizedBox(height: 140, child: _BarChart()),
        ])),
        const SizedBox(height: 12),
        TCard(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('AI Delay Prediction', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          const SizedBox(height: 16),
          SizedBox(height: 130, child: _LineChart()),
        ])),
        const SizedBox(height: 16),
        TButton(label: '↓ Export Analytics Report', onTap: () {}),
      ],
    );
  }
}

class _BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weeks = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
    final completed = [8.0, 14.0, 10.0, 18.0];
    final total = [12.0, 16.0, 15.0, 20.0];
    return CustomPaint(painter: _BarPainter(weeks: weeks, completed: completed, total: total), child: const SizedBox.expand());
  }
}

class _BarPainter extends CustomPainter {
  final List<String> weeks;
  final List<double> completed, total;
  _BarPainter({required this.weeks, required this.completed, required this.total});
  @override
  void paint(Canvas canvas, Size size) {
    final max = total.reduce((a, b) => a > b ? a : b);
    final bw = size.width / (weeks.length * 3);
    final tp = TextPainter(textDirection: TextDirection.ltr);
    for (int i = 0; i < weeks.length; i++) {
      final x = i * (size.width / weeks.length) + bw * 0.5;
      final h1 = (completed[i] / max) * (size.height - 30);
      final h2 = (total[i] / max) * (size.height - 30);
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(x, size.height - 30 - h1, bw, h1), const Radius.circular(4)), Paint()..color = AppColors.primary);
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(x + bw + 2, size.height - 30 - h2, bw, h2), const Radius.circular(4)), Paint()..color = AppColors.border);
      tp.text = TextSpan(text: weeks[i], style: const TextStyle(fontSize: 9, color: AppColors.textSecondary));
      tp.layout();
      tp.paint(canvas, Offset(x - 4, size.height - 20));
    }
  }
  @override
  bool shouldRepaint(covariant CustomPainter o) => false;
}

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _LinePainter(), child: const SizedBox.expand());
  }
}

class _LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final dates = ['Jan 5', 'Jan 8', 'Jan 10', 'Jan 12', 'Jan 15'];
    final actual = [60.0, 63.0, 65.0, 68.0, 70.0];
    final predicted = [60.0, 65.0, 68.0, 75.0, 82.0];
    final h = size.height - 20;
    final tp = TextPainter(textDirection: TextDirection.ltr);

    void drawLine(List<double> values, Color color, bool dashed) {
      final pts = List.generate(values.length, (i) => Offset(i * size.width / (values.length - 1), h - (values[i] - 55) / 35 * h * 0.8));
      final paint = Paint()..color = color..strokeWidth = 2..style = PaintingStyle.stroke;
      if (dashed) {
        for (int i = 0; i < pts.length - 1; i++) {
          canvas.drawLine(pts[i], pts[i + 1], paint..color = color.withOpacity(0.7));
        }
      } else {
        final path = Path()..moveTo(pts[0].dx, pts[0].dy);
        for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
        canvas.drawPath(path, paint);
      }
      for (final p in pts) canvas.drawCircle(p, 4, Paint()..color = color);
    }

    drawLine(actual, AppColors.primary, false);
    drawLine(predicted, AppColors.warning, true);

    for (int i = 0; i < dates.length; i++) {
      final x = i * size.width / (dates.length - 1);
      tp.text = TextSpan(text: dates[i], style: const TextStyle(fontSize: 9, color: AppColors.textSecondary));
      tp.layout();
      tp.paint(canvas, Offset(x - tp.width / 2, size.height - 16));
    }
  }
  @override
  bool shouldRepaint(covariant CustomPainter o) => false;
}

// ── Add Task Screen ──────────────────────────────────────────────────────────
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18, color: AppColors.primary), onPressed: () => Navigator.pop(context)),
        title: const Text('Add Task', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary.withOpacity(0.3), width: 1.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _label('Task Tittle'),
              _field('Enter task tittle'),
              const SizedBox(height: 16),
              _label('Assignee'),
              _dropField('Select assignee', Icons.person),
              const SizedBox(height: 16),
              _label('Due Date'),
              _dropField('Select date', Icons.calendar_month),
              const SizedBox(height: 16),
              _label('Status'),
              _dropField('To do', null),
              const SizedBox(height: 16),
              _label('Priority'),
              _priorityDrop(),
              const SizedBox(height: 16),
              _label('Description'),
              _areaField('Enter Project Description'),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, minimumSize: const Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                child: const Text('Create Task', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                style: OutlinedButton.styleFrom(side: const BorderSide(color: AppColors.primary), minimumSize: const Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                child: const Text('Cancel', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _label(String text) => Padding(padding: const EdgeInsets.only(bottom: 8), child: Text(text, style: const TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.w600, fontSize: 15)));

  Widget _field(String hint) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(border: Border.all(color: AppColors.primary.withOpacity(0.5)), borderRadius: BorderRadius.circular(12)),
    child: TextField(decoration: InputDecoration(hintText: hint, hintStyle: const TextStyle(color: AppColors.textHint), border: InputBorder.none)),
  );

  Widget _dropField(String hint, IconData? icon) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(border: Border.all(color: AppColors.primary.withOpacity(0.5)), borderRadius: BorderRadius.circular(12)),
    child: Row(children: [
      if (icon != null) ...[Icon(icon, size: 18, color: AppColors.primary), const SizedBox(width: 10)],
      Text(hint, style: const TextStyle(color: AppColors.textHint)),
      const Spacer(),
      const Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
    ]),
  );

  Widget _priorityDrop() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: BoxDecoration(border: Border.all(color: AppColors.primary.withOpacity(0.5)), borderRadius: BorderRadius.circular(12)),
    child: Row(children: [
      TChip(label: 'Medium', bg: AppColors.warning, textColor: Colors.white),
      const Spacer(),
      const Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
    ]),
  );

  Widget _areaField(String hint) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(border: Border.all(color: AppColors.primary.withOpacity(0.5)), borderRadius: BorderRadius.circular(12)),
    child: TextField(maxLines: 4, decoration: InputDecoration(hintText: hint, hintStyle: const TextStyle(color: AppColors.textHint), border: InputBorder.none)),
  );
}
