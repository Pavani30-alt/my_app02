import 'package:flutter/material.dart'; 
import 'package:my_app02/modals/Task_modal.dart';
import 'package:my_app02/widgets/TaskTimeLine.dart';
import 'package:my_app02/widgets/datePicker.dart';
import 'package:my_app02/widgets/task_title.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, task), 
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DatePicker(),
                  TaskTitle(),
                ],
              ),
            ),
          ),
          detailList == null
            ? SliverFillRemaining(
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: Center(
                    child: Text(
                      'No Tasks yet',
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
                    ),
                  ),
                ),
              )
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => TaskTimeLine(detailList[index]),
                  childCount: detailList.length,
                ),
              ),
        ],
      ),
    );
  }
}

Widget _buildAppBar(BuildContext context, Task task) {
  return SliverAppBar(
    backgroundColor: Colors.black,
    expandedHeight: 90,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.pop(context),
      iconSize: 20,
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () {},
        iconSize: 20,
      ),
    ],
    flexibleSpace: FlexibleSpaceBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '${task.title} Task', // Displays the task's title
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'You have ${task.left} tasks left to do', // Shows the remaining tasks
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
