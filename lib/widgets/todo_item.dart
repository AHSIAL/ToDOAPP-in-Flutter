import 'package:flutter/material.dart';
import 'package:to_do_list/models/toDo.dart';
import 'package:to_do_list/utils/colors.dart';

class TodoItem extends StatelessWidget {
  final Todo todoo;
  final onToDoChanged;
  final onDeleteItem;
  const TodoItem({
    super.key,
    required this.todoo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChanged(todoo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
          leading: Icon(
            todoo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: blue,
          ),
          title: Text(
            todoo.todoText,
            style: TextStyle(
                color: black,
                fontSize: 16,
                decoration: todoo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
                onPressed: () {
                  onDeleteItem(todoo.id);
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 18,
                )),
          ),
        ),
      ),
    );
  }
}
