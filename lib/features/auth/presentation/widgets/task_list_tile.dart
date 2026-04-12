// // في ملف widgets/task_list_tile.dart
// import 'package:flutter/material.dart';

// class TaskListTile extends StatelessWidget {
//   final String taskName;
//   final String dueDate;
//   final String delayPercent;
//   final String tag;

//   const TaskListTile({
//     super.key,
//     required this.taskName,
//     required this.dueDate,
//     required this.delayPercent,
//     required this.tag,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(color: const Color(0xFFD9E9F3), width: 1),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               // علامة التعجب الزرقاء
//               const Icon(Icons.error_outline, color: Color(0xFF4384B6), size: 18),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   taskName,
//                   style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF345A81)),
//                   overflow: TextOverflow.ellipsis, // عشان النص ميبقاش طويل
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 28), // عشان ييجي تحت النص
//             child: Text("Due $dueDate", style: const TextStyle(fontSize: 12, color: Color(0xFF536E8F))),
//           ),
//           const SizedBox(height: 12),
//           Row(
//             children: [
//               const SizedBox(width: 28),
//               // الـ Badge بتاعة نسبة التأخير
//               _buildBadge("$delayPercent chance of delay", const Color(0xFFD9E9F3).withOpacity(0.5)),
//               const SizedBox(width: 10),
//               // الـ Badge بتاعة الـ Tag (مثلاً Design System)
//               _buildBadge(tag, const Color(0xFFE5E7EB).withOpacity(0.5)),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   // ميثود صغيرة لعمل الـ Badge
//   Widget _buildBadge(String text, Color bgColor) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(
//         text,
//         style: const TextStyle(fontSize: 11, color: Color(0xFF345A81), fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }