import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/todo/todo_usecase.dart';

import '../../../domain/todo/todo.dart';

class TodosPage extends ConsumerStatefulWidget {
  TodosPage({super.key});

  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends ConsumerState<TodosPage> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(initTodoUseCaseProvider),
    );
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(findTodosUseCaseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('やること'),
      ),
      body: todos.when(
        data: (value) => ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) {
              return ListTile(
                title: TextField(
                  controller: controller,
                  onSubmitted: (value) {
                    addTodo(ref, value);
                  },
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    addTodo(ref, controller.text);
                  },
                  child: const Text('保存'),
                ),
              );
            }
            final todo = value[index - 1];
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                deleteTodo(ref, todo);
              },
              child: ListTile(
                title: Text(todo.content),
              ),
            );
          },
          itemCount: value.length + 1,
        ),
        error: (error, stackTrace) => Center(
          child: Text('読み込みエラー: $error'),
        ),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  void addTodo(WidgetRef ref, String value) {
    ref.read(addTodoUseCaseProvider(value));
    controller.clear();
  }

  void deleteTodo(WidgetRef ref, Todo todo) {
    ref.read(deleteTodoUseCaseProvider(todo));
  }
}
