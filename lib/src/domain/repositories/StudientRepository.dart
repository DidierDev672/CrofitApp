import '../entities/Student.dart';

abstract class StudentRepository {
  Future<void> createStudent(Student student);
  Future<List<Student>> allStudent();
  Future<List<Student>> getStudent(int id);
  Future<void> updateStudent(Student student);
  Future<void> deleteStudent(int id);
}
