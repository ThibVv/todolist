import 'package:flutter/material.dart';
import 'data/static.dart';
import 'models/task.dart';



// Définition de la classe TodolistApp qui hérite de StatelessWidget - 
// qui ne change pas d'état après sa création 

// Cette classe représente l'application principale
class TodolistApp extends StatefulWidget {
  const TodolistApp({super.key});


  @override
  State<TodolistApp> createState() => _TodolistAppState();
}

class _TodolistAppState extends State<TodolistApp> {
  @override
  Widget build(BuildContext context) { // construit l'interface graphique 
    return MaterialApp( // conteneur principal 
      home: Scaffold( // structure de base
        appBar: AppBar(
          leading: Image.asset('images/todolist.png'),
           title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Todolist", style: TextStyle(color: todolistThemeMainColor, fontSize: 30, fontWeight: FontWeight.bold)),
            Text("${tasksCollection.length} Tasks", style: TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              ),
            ),

        body: Center(
          child: Column(
            children: [
              Expanded( // permet à la liste qui suit de prendre l'espace restant 
                child: ListView.builder( // générateur dynamique de liste 
                  itemCount: tasksCollection.length, // la liste aura autant d'éléments que la longueur de taskCollection
                  itemBuilder: (context, index) { 
                    final task = tasksCollection[index];
                    return ListTile(
                      leading: buildIcon(task.status),
                      title: Text(task.content),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon buildIcon(TaskStatus status) { // statut de l'îcone en fonction de la tâche
    switch (status) {
      case TaskStatus.todo:
        return Icon(Icons.circle, color: Colors.yellow);
      case TaskStatus.doing:
        return Icon(Icons.circle, color: Colors.orange);
      case TaskStatus.done:
        return Icon(Icons.check_circle, color: Colors.green);
    }
  }

final ThemeData todolistTheme = ThemeData(
  primaryColor: Color(0xFF3ABCA7),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
  ),
);

final Color todolistThemeMainColor = Color(0xFF3ABCA7);
}

