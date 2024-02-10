import 'package:comicsapp/src/domain/entities/Student.dart';
import 'package:comicsapp/src/infrastructure/database/student_database.dart';

class StudentService {
  final StudentDatabase _studentDatabase;

  StudentService(this._studentDatabase);

  Future<void> createStudent(Student student) async {
    await _studentDatabase.createStudent(student);
  }

  Future<List<Student>> getStudents() async {
    return await _studentDatabase.getStudents();
  }

  Future<Student?> getStudent(int id) async {
    return await _studentDatabase.getStudentById(id);
  }

  Future<void> updateStudent(Student student) async {
    await _studentDatabase.createStudent(student);
  }

  Future<void> deleteStudent(int id) async {
    await _studentDatabase.deleteStudent(id);
  }
}
