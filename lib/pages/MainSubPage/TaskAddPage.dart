import 'package:flutter/material.dart';

class TaskAddPage extends StatelessWidget {
  const TaskAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return(
        const Scaffold(
            body: (
                SafeArea(
                    child: (
                        Text("Task Add Page")
                    )
                )
            )
        )
    );
  }
}