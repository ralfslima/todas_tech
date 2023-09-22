// main.dart
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pp03_clean_architecture/task_data_repository.dart';
import 'package:pp03_clean_architecture/task_model.dart';
import 'package:pp03_clean_architecture/task_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TaskRepository taskRepository = TaskDataRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
        ),
        body: TaskList(taskRepository: taskRepository),
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  final TaskRepository taskRepository;

  TaskList({required this.taskRepository});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final loadedTasks = await widget.taskRepository.getTasks();
    setState(() {
      tasks = loadedTasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.isCompleted,
            onChanged: (value) {
              final updatedTask = (isCompleted: value ?? false);
              widget.taskRepository.updateTask(updatedTask as Task);
              _loadTasks();
            },
          ),
        );
      },
    );
  }
}
