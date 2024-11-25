import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {


  List toDoList = [
  ["Make Tutorial", false],
  ["Do Exercise", false],
  ];

  // text controller
  final _controller = TextEditingController();

  // list of todo tasks

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([ _controller.text, false ]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
     toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Center(child: Text("TO DO")),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class TodoPage extends StatefulWidget {
//   const TodoPage({super.key});
//
//   @override
//   State<TodoPage> createState() => _TodoPageState();
// }
//
// class _TodoPageState extends State<TodoPage> {
//
//   // text editing controller to get access to what the user typed
//   TextEditingController myController = TextEditingController();
//
//   String greetingMessage = "";
//
//   void greetUser (){
//     String userName = myController.text;
//     setState(() {
//       greetingMessage = "Hello ," + userName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(25.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //greet user message
//               Text(greetingMessage),
//
//               // textfield
//               TextField(
//                 controller: myController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Type your name..",
//                 ),
//               ),
//
//               //button
//               ElevatedButton(onPressed: greetUser, child: Text("Tap")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
