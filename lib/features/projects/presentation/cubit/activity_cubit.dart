import 'package:flutter_bloc/flutter_bloc.dart';
import 'activity_state.dart';
import '../../domain/entities/activity_entity.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityInitial());

  final List<ActivityEntity> _activities = [];

  Future<void> getActivities() async {
    if (isClosed) return;

    emit(ActivityLoading());

    await Future.delayed(const Duration(milliseconds: 500));

    if (isClosed) return;

    _activities.clear();
    _activities.addAll([
      ActivityEntity(
        title: "Task completed",
        time: "2h ago",
        type: "completed",
      ),
      ActivityEntity(
        title: "File uploaded",
        time: "5h ago",
        type: "upload",
      ),
    ]);

    emit(ActivityLoaded(List.from(_activities)));
  }
}