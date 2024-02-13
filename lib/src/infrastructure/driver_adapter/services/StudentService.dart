import 'package:comicsapp/src/domain/entities/Student.dart';
//import 'package:comicsapp/src/infrastructure/database/student_database.dart';

class StudentService {
  List<Student> listStudents = [
    Student(
        id: 1,
        idCoach: 1,
        name: 'John',
        lastName: 'Doe',
        dni: '123456789',
        email: 'john.doe@example.com',
        photo: '',
        subscription: false),
    Student(
        id: 2,
        idCoach: 2,
        name: 'Didier',
        lastName: 'Arias',
        dni: '1038134311',
        email: 'ariasdev672@gmail.com',
        photo: '',
        subscription: true),
    Student(
        id: 3,
        idCoach: 3,
        name: 'Daniel',
        lastName: 'Ricardo',
        dni: '1234567890',
        email: 'imdanielricardo@gmail.com',
        photo: '',
        subscription: false),
    Student(
        id: 4,
        idCoach: 1,
        name: 'Luis',
        lastName: 'Ayala',
        dni: '234567890',
        email: 'imluisayala@gmail.com',
        photo: '',
        subscription: true),
    Student(
        id: 5,
        idCoach: 1,
        name: 'Kevin Stiven',
        lastName: 'Torres',
        dni: '0987654321',
        email: 'imkevintorres@gmail.com',
        photo: '',
        subscription: true),
    Student(
        id: 6,
        idCoach: 1,
        name: 'Shirley',
        lastName: 'Ramos',
        dni: '8987654321',
        email: 'imshirleyramos@gmail.com',
        photo: '',
        subscription: true),
    Student(
        id: 7,
        idCoach: 1,
        name: 'Carolina',
        lastName: 'Restrepo',
        dni: '89765432',
        email: 'imcarolinarestrepo@gmail.com',
        photo: '',
        subscription: true),
  ];

  List<Student> getStudent(int idCoach, bool subS) {
    List<Student> listStudent = [];
    for (var students in listStudents) {
      if (students.idCoach == idCoach && students.subscription == subS) {
        listStudent.add(students);
      }
    }

    return listStudent;
  }
  /*final StudentDatabase _studentDatabase;

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
  }*/
}
