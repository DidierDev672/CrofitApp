import '../../domain/entities/Student.dart';

abstract class StudentPort {
  Future<void> createStudent(Student student);
  Future<List<Student>> getAllStudents();
  Future<List<Student>> getStudent(int id);
  Future<void> updateStudent(Student student);
  Future<void> deleteStudent(int id);
}
