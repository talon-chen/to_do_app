import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callBack;
  final Function longPress;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.callBack,
    required this.longPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () => longPress(),
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) => callBack(value),
        ));
  }
}
