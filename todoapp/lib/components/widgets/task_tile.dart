import 'package:flutter/material.dart';
import 'package:todoapp/services/datetime.dart';

/// Main 2 Feature:
/// longPressToDelete & Current time of adding task
/// Will be kept simple. All logic will be handled in it's parent widget.
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(dateTimeService.currentTime),
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ],
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
