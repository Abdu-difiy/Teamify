class ActivityEntity {
  final String title;
  final String time;
  final String type; // completed / upload / join

  ActivityEntity({
    required this.title,
    required this.time,
    required this.type,
  });
}