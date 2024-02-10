import 'package:comicsapp/src/domain/entities/Student.dart';
import 'package:hive_flutter/adapters.dart';

class StudentDatabase {
  static const String _boxStudent = 'students';

  Future<void> createStudent(Student student) async {
    final box = await Hive.openBox<Student>(_boxStudent);
    await box.add(student);
  }

  Future<List<Student>> getStudents() async {
    final box = await Hive.openBox<Student>(_boxStudent);
    return box.values.toList();
  }

  Future<Student?> getStudentById(int id) async {
    final box = await Hive.openBox<Student>(_boxStudent);
    return box.get(id);
  }

  Future<void> deleteStudent(int id) async {
    final box = await Hive.openBox(_boxStudent);
    await box.delete(id);
  }
}
