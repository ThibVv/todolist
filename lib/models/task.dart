// importation du package pour générer des id uniques
import 'package:uuid/uuid.dart';

// Définition d'un enum TaskStatus pour représenter les différents états d'une tâche
// - todo : tâche à faire
// - doing : tâche en cours
// - done : tâche terminée
enum TaskStatus { todo, doing, done }

// Définition de la classe Task pour modéliser une tâche
class Task {
  late String id; //id unique de la tâche
  late String content; // contenu/description 
  late DateTime createdAt; //date de création
  DateTime? completedAt; //date d'achevement de la tâche
  TaskStatus status;

// Constructeur de la classe Task
  Task({required this.content}) // seul 'content' est requis lors de la création
      : id = Uuid().v4(), // génère un id unique avec uuid v4
        createdAt = DateTime.now(), // définit la date de création
        status = TaskStatus.todo; // initialise le statut todo par défaut 

// surcharge de la méthode toString pour afficher un résumé de la tâche
  @override
  String toString() {
    return 'Task(id: $id, content: $content, status: $status, createdAt: $createdAt, completedAt: $completedAt)';
  }
}
