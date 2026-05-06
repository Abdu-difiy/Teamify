import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/routes.dart';
import '../../data/dummy_data.dart';
import '../../widgets/widgets.dart';

class FreelancerHomeScreen extends StatelessWidget {
  const FreelancerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                    SizedBox(height: 2),
                    Text("Here's your overview for today", style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
                  ],
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_outlined, color: AppColors.textPrimary, size: 26),
                      onPressed: () => Navigator.pushNamed(context, R.notifications),
                    ),
                    Positioned(top: 8, right: 8, child: Container(width: 8, height: 8, decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Stats Row
            Row(
              children: [
                _miniStat(Icons.access_time_outlined, '3', 'Active Projects', AppColors.primary),
                const SizedBox(width: 12),
                _miniStat(Icons.check_circle_outline, '24', 'Tasks Done', AppColors.success),
                const SizedBox(width: 12),
                _miniStat(Icons.warning_amber_outlined, '8', 'Pending', AppColors.warning),
              ],
            ),
            const SizedBox(height: 20),
            // AI Insight
            AIBanner(
              title: 'Daily AI Insight',
              subtitle: "You're performing 15% better this week. Keep up the great work on Project Alpha!",
              badge: '↗ +15% improvement',
              onTap: () => Navigator.pushNamed(context, R.aiInsights),
            ),
            const SizedBox(height: 24),
            // Quick Actions
            const TSectionHeader(title: 'Quick Actions'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, R.addTask),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(16)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Task', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 4),
                          Text('Create quickly', style: TextStyle(color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, R.projectDetails),
                    child: TCard(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('View Projects', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.textPrimary)),
                          SizedBox(height: 4),
                          Text('See all active', style: TextStyle(color: AppColors.textSecondary, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Recent Activity
            const TSectionHeader(title: 'Recent Activity'),
            const SizedBox(height: 12),
            ...DummyData.recentActivity.map((a) => TCard(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(a['title']!, style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary, fontSize: 13)),
                            const SizedBox(height: 2),
                            Text(a['project']!, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                          ],
                        ),
                      ),
                      Text(a['time']!, style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                    ],
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: TBottomNav(current: 0, onTap: (i) => handleFreelancerNav(context, i)),
    );
  }

  Widget _miniStat(IconData icon, String value, String label, Color color) {
    return Expanded(
      child: TCard(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(height: 4),
            Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            Text(label, style: const TextStyle(fontSize: 10, color: AppColors.textSecondary), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// ── Search Screen ─────────────────────────────────────────────────────────────
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _ctrl = TextEditingController();
  String _query = '', _tab = 'All';

  List<Map<String, dynamic>> get _results {
    if (_query.isEmpty) return [];
    final q = _query.toLowerCase();
    final r = <Map<String, dynamic>>[];
    if (_tab == 'All' || _tab == 'Projects') {
      for (final p in DummyData.projects) {
        if (p.name.toLowerCase().contains(q)) {
          r.add({'type': 'Project', 'title': p.name, 'sub': p.company, 'icon': Icons.folder_outlined});
        }
      }
    }
    if (_tab == 'All' || _tab == 'People') {
      for (final u in DummyData.users) {
        if (u.name.toLowerCase().contains(q)) {
          r.add({'type': 'Person', 'title': u.name, 'sub': u.role, 'icon': Icons.person_outline});
        }
      }
    }
    if (_tab == 'All' || _tab == 'Tasks') {
      for (final p in DummyData.projects) {
        for (final t in p.tasks) {
          if (t.title.toLowerCase().contains(q)) {
            r.add({'type': 'Task', 'title': t.title, 'sub': 'In ${p.name}', 'icon': Icons.check_circle_outline});
          }
        }
      }
    }
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18), onPressed: () => Navigator.pop(context)),
        title: TextField(
          controller: _ctrl,
          autofocus: true,
          onChanged: (v) => setState(() => _query = v),
          decoration: const InputDecoration(hintText: 'Search projects, people, tasks...', border: InputBorder.none),
        ),
        actions: [
          if (_query.isNotEmpty)
            IconButton(icon: const Icon(Icons.clear), onPressed: () { _ctrl.clear(); setState(() => _query = ''); }),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ['All', 'Projects', 'People', 'Tasks'].map((t) {
                  final sel = _tab == t;
                  return GestureDetector(
                    onTap: () => setState(() => _tab = t),
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: sel ? AppColors.primary : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: sel ? AppColors.primary : AppColors.border),
                      ),
                      child: Text(t, style: TextStyle(color: sel ? Colors.white : AppColors.textSecondary, fontWeight: FontWeight.w600, fontSize: 13)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: _query.isEmpty
                ? _buildSuggestions()
                : _results.isEmpty
                    ? Center(child: Text('No results for "$_query"', style: const TextStyle(color: AppColors.textSecondary)))
                    : ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: _results.length,
                        itemBuilder: (_, i) {
                          final r = _results[i];
                          return TCard(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), shape: BoxShape.circle),
                                  child: Icon(r['icon'] as IconData, color: AppColors.primary, size: 20),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(r['title'], style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                                      Text(r['sub'], style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                                    ],
                                  ),
                                ),
                                TChip(label: r['type']),
                              ],
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
      bottomNavigationBar: TBottomNav(current: 1, onTap: (i) => handleFreelancerNav(context, i)),
    );
  }

  Widget _buildSuggestions() {
    if (_tab == 'Projects') {
      return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TSectionHeader(title: 'Suggested Projects'),
          const SizedBox(height: 12),
          ...DummyData.projects.map((p) => _projectCard(p)),
        ],
      );
    } else if (_tab == 'People') {
      return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TSectionHeader(title: 'Recommended People'),
          const SizedBox(height: 12),
          ...DummyData.users.map((u) => _personCard(u)),
        ],
      );
    } else if (_tab == 'Tasks') {
      final allTasks = DummyData.projects.expand((p) => p.tasks).toList();
      return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TSectionHeader(title: 'Suggested Tasks'),
          const SizedBox(height: 12),
          ...allTasks.take(10).map((t) => _taskCard(t)),
        ],
      );
    } else {
      // 'All' tab
      return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TSectionHeader(title: 'Suggested Projects'),
          const SizedBox(height: 12),
          ...DummyData.projects.take(2).map((p) => _projectCard(p)),
          const SizedBox(height: 24),
          const TSectionHeader(title: 'Recommended People'),
          const SizedBox(height: 12),
          ...DummyData.users.take(3).map((u) => _personCard(u)),
        ],
      );
    }
  }

  Widget _projectCard(dynamic p) => TCard(
    margin: const EdgeInsets.only(bottom: 10),
    onTap: () => Navigator.pushNamed(context, R.projectDetails, arguments: p),
    child: Row(
      children: [
        Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
            child: const Icon(Icons.folder_outlined, color: AppColors.primary, size: 20)),
        const SizedBox(width: 12),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(p.name, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          Text(p.description, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
        ])),
        const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textSecondary),
      ],
    ),
  );

  Widget _personCard(dynamic u) => TCard(
    margin: const EdgeInsets.only(bottom: 10),
    child: Row(children: [
      TAvatar(initials: u.name[0], radius: 20),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(u.name, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        Text(u.role, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
      ])),
      const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textSecondary),
    ]),
  );

  Widget _taskCard(dynamic t) => TCard(
    margin: const EdgeInsets.only(bottom: 10),
    child: Row(children: [
      Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: AppColors.success.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
          child: const Icon(Icons.check_circle_outline, color: AppColors.success, size: 20)),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(t.title, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        Text('Due: ${t.dueDate}', style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
      ])),
      const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textSecondary),
    ]),
  );
}

// ── Student Home ──────────────────────────────────────────────────────────────
class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text('Welcome Back', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            const Text("Here's your overview for today", style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search projects, people, tasks...',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Profile card
            TCard(child: Row(children: [
              Container(width: 48, height: 48, decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.15), shape: BoxShape.circle),
                child: const Center(child: Icon(Icons.person_outline, color: AppColors.primary, size: 26))),
              const SizedBox(width: 12),
              const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Ahmed Hassan', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 15)),
                Row(children: [Icon(Icons.school_outlined, size: 13, color: AppColors.textSecondary), SizedBox(width: 4), Text('Cairo University', style: TextStyle(fontSize: 12, color: AppColors.textSecondary))]),
                Row(children: [Icon(Icons.location_on_outlined, size: 13, color: AppColors.textSecondary), SizedBox(width: 4), Text('Cairo, Egypt', style: TextStyle(fontSize: 12, color: AppColors.textSecondary))]),
              ]),
            ])),
            const SizedBox(height: 16),
            // Stats
            Row(children: [
              _stat(Icons.book_outlined, '3', 'Active', AppColors.primary),
              const SizedBox(width: 10),
              _stat(Icons.check_circle_outline, '24', 'Done', AppColors.success),
              const SizedBox(width: 10),
              _stat(Icons.warning_amber_outlined, '8', 'Pending', AppColors.warning),
            ]),
            const SizedBox(height: 16),
            // AI Insight
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: const Color(0xFFEEF4FF), borderRadius: BorderRadius.circular(16)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Row(children: [
                  Icon(Icons.auto_awesome, color: AppColors.primary, size: 18),
                  SizedBox(width: 6),
                  Text('Daily AI Insight', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                ]),
                const SizedBox(height: 6),
                const Text("You're improving your productivity this week. Keep going!", style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                const SizedBox(height: 8),
                Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4), decoration: BoxDecoration(color: AppColors.success.withOpacity(0.15), borderRadius: BorderRadius.circular(20)),
                  child: const Text('↗ +15% improvement', style: TextStyle(fontSize: 12, color: AppColors.success, fontWeight: FontWeight.w600))),
              ]),
            ),
            const SizedBox(height: 20),
            const Text('Quick Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, R.addTask),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: const Color(0xFF3B6BB3), borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Task', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 4),
                        Text('Create quickly', style: TextStyle(color: Colors.white70, fontSize: 13)),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
                      child: const Icon(Icons.add, color: Colors.white, size: 22),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, R.projectDetails),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('View Projects', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 18)),
                        SizedBox(height: 4),
                        Text('See all active', style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.book_outlined, color: Color(0xFF3B6BB3), size: 26),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, R.search),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Find Teammates', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 18)),
                        SizedBox(height: 4),
                        Text('Join a team', style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.search, color: Color(0xFF3B6BB3), size: 26),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Recent Activity', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            const SizedBox(height: 12),
            ...[
              {'icon': Icons.check_circle_outline, 'color': AppColors.success, 'title': 'Completed assignment', 'sub': 'Machine Learning Project - 2 hours ago'},
              {'icon': Icons.chat_bubble_outline, 'color': AppColors.primary, 'title': 'Received feedback', 'sub': 'Web Development Task - 5 hours ago'},
              {'icon': Icons.book_outlined, 'color': const Color(0xFF8B5CF6), 'title': 'Joined new project', 'sub': 'Mobile App Development - 1 day ago'},
            ].map((a) => TCard(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(children: [
                Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: (a['color'] as Color).withOpacity(0.1), shape: BoxShape.circle),
                  child: Icon(a['icon'] as IconData, color: a['color'] as Color, size: 18)),
                const SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(a['title'] as String, style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary, fontSize: 13)),
                  Text(a['sub'] as String, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                ])),
              ]),
            )),
          ],
        ),
      ),
      bottomNavigationBar: TBottomNav(current: 0, onTap: (i) => handleFreelancerNav(context, i)),
    );
  }

  Widget _stat(IconData icon, String value, String label, Color color) {
    return Expanded(child: TCard(padding: const EdgeInsets.all(12), child: Column(children: [
      Icon(icon, color: color, size: 20),
      const SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
      Text(label, style: const TextStyle(fontSize: 10, color: AppColors.textSecondary)),
    ])));
  }
}

// ── Notifications Screen ──────────────────────────────────────────────────────
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<Map<String, String>> _notifs = [
    {'title': 'Security Alert', 'body': 'New login attempt from London, UK', 'time': '5m ago', 'type': 'alert'},
    {'title': 'Project Update', 'body': 'Alice Smith updated "Design System"', 'time': '1h ago', 'type': 'info'},
    {'title': 'Meeting Reminder', 'body': 'Team sync starts in 15 minutes', 'time': '2h ago', 'type': 'info'},
    {'title': 'Security Alert', 'body': 'Multiple failed login attempts detected', 'time': 'Yesterday', 'type': 'alert'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios, size: 18), onPressed: () => Navigator.pop(context)),
        title: const Text('Notifications', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        actions: [
          if (_notifs.isNotEmpty)
            TextButton(
              onPressed: () => setState(() => _notifs = []),
              child: const Text('Clear All', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
            )
        ],
      ),
      body: _notifs.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_off_outlined, size: 80, color: AppColors.textHint.withOpacity(0.5)),
                  const SizedBox(height: 16),
                  const Text('No Notifications', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                  const Text("You're all caught up!", style: TextStyle(color: AppColors.textSecondary)),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _notifs.length,
              itemBuilder: (_, i) {
                final n = _notifs[i];
                final isAlert = n['type'] == 'alert';
                return TCard(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: (isAlert ? AppColors.error : AppColors.primary).withOpacity(0.1), shape: BoxShape.circle),
                        child: Icon(isAlert ? Icons.warning_amber_outlined : Icons.notifications_none, color: isAlert ? AppColors.error : AppColors.primary, size: 22),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(n['title']!, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                                Text(n['time']!, style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(n['body']!, style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
