// Classe abstrata contendo os métodos
import 'package:pp03_clean_architecture/task_model.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();
  Future<void> addTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(String taskId);
}
