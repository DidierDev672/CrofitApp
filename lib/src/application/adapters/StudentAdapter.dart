import '../../domain/entities/Student.dart';
import '../../domain/repositories/StudientRepository.dart';
import '../../application/ports/StudentPort.dart';

class StudentAdapter implements StudentPort {
  final StudentRepository _studentRepository;

  StudentAdapter(this._studentRepository);

  @override
  Future<void> createStudent(Student student) async {
    await _studentRepository.createStudent(student);
  }

  @override
  Future<void> deleteStudent(int id) async {
    await _studentRepository.deleteStudent(id);
  }

  @override
  Future<List<Student>> getAllStudents() async {
    return await _studentRepository.allStudent();
  }

  @override
  Future<List<Student>> getStudent(int id) async {
    return await _studentRepository.getStudent(id);
  }

  @override
  Future<void> updateStudent(Student student) async {
    await _studentRepository.updateStudent(student);
  }
}
