import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;
  const Todo(this.title, this.description);
}

void main() => runApp(MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(todos: todos),
    ));

final todos = List.generate(
    20,
    (index) => Todo('Todo $index',
        'A description of what needs to be done for Todo $index'));

final listview = ListView.builder(
    itemCount: todos.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(todos[index].title),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailScreen(todo: todos[index]);
          }));
        },
      );
    });

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: listview,
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}
