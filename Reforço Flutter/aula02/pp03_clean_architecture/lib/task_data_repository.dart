// task_data_repository.dart
import 'package:pp03_clean_architecture/task_model.dart';
import 'package:pp03_clean_architecture/task_repository.dart';

class TaskDataRepository implements TaskRepository {
  // Lista de tarefas
  List<Task> _tasks = [];

  // Métodos implementados
  @override
  Future<List<Task>> getTasks() async {
    return _tasks;
  }

  @override
  Future<void> addTask(Task task) async {
    _tasks.add(task);
  }

  @override
  Future<void> updateTask(Task task) async {
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
    }
  }

  @override
  Future<void> deleteTask(String taskId) async {
    _tasks.removeWhere((t) => t.id == taskId);
  }
}
