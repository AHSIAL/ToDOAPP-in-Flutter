class Todo {
  String? id;
  String todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> ToDoList() {
    return [
      Todo(id: "01", todoText: "Morning Exercise", isDone: true),
      Todo(id: "02", todoText: "Buy Groceries", isDone: false),
      Todo(id: "03", todoText: "Morning Exercise", isDone: true),
      Todo(id: "04", todoText: "Morning Exercise", isDone: true),
      Todo(id: "05", todoText: "Morning Exercise", isDone: true),
    ];
  }
}
