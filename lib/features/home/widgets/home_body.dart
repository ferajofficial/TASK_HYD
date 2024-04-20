import 'package:flutter/material.dart';
import 'package:task_hyd/models/task_model.dart';
import 'package:task_hyd/repos/task_repos.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeBody extends StatelessWidget {
  // final TaskModel? taskModel;
  const HomeBody({
    super.key,
    // required this.taskModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FutureBuilder<List<TaskModel>>(
              future: techs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  final tasks = snapshot.data!;
                  return ListView.separated(
                    separatorBuilder: (context, index) => 12.heightBox,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.grey[200],
                        title: Text('ID: ${tasks[index].id}'),
                        subtitle: Text('Column 1: ${tasks[index].column1}'),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ).p12(),
      ),
    );
  }
}
