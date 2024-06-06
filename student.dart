class Student {
  String name;
  DateTime? enrollmentDate;

  // 读取属性，不可直接修改
  int? get enrollmentYear => enrollmentDate?.year;

  // 构造函数，直接赋值成员变量
  Student(this.name, this.enrollmentDate) {
    // 初始化代码可以放在这里
  }

  // 命名构造函数，用于未定入学日期的情况
  Student.unenrolled(String name) : this(name, null);

  // 方法，描述学生信息
  void describe() {
    print('Student: $name');
    // 在getters上使用类型推广
    var enrollmentDate = this.enrollmentDate;
    if (enrollmentDate != null) {
      int years = DateTime.now().difference(enrollmentDate).inDays ~/ 365;
      print('Enrolled: $enrollmentYear ($years ago)');
    } else {
      print('Unenrolled');
    }
  }
}
