import '../models/task.dart';


// Déclaration d'une liste finale contenant des tâches statiques
// La liste est de type List<Task> ne changera pas (grâce au mot-clé "final")
final List<Task> tasksCollection = [

// Création d'instances de la classe Task avec un contenu prédéfini
  Task(content: "Apprendre Dart"),
  Task(content: "Apprendre Flutter"),
  Task(content: "Développer une application mobile"),
];
