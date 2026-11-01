class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return '$name($address)';
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  @override
  String toString() {
    return "Student: ${super.toString()}";
  }

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    for (int i = 0; i < grades.length; i++) {
      print("your grade in ${courses[i]} is : ${grades[i]}");
    }
  }

  double getAverageGrades() {
    int sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum += grades[i];
    }
    return sum / grades.length;
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  @override
  String toString() {
    return "Teacher: ${super.toString()}";
  }

  bool addCourse(String course) {
    for (int i = 0; i < courses.length; i++) {
      if (course == courses[i]) {
        return false;
      }
    }
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    for (int i = 0; i < courses.length; i++) {
      if (course == courses[i]) {
        courses.remove(course);
        numCourses--;
        return true;
      }
    }
    return false;
  }
}
