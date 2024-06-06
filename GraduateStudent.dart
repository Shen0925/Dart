// GraduateStudent 类继承自 Student 类
class GraduateStudent extends Student {
  String thesisTopic;

  // 使用 super 关键字调用父类的构造函数
  GraduateStudent(String name, int year, this.thesisTopic) : super(name, year);

  // 覆盖 introduce 方法以添加论文主题信息
  @override
  void introduce() {
    super.introduce(); // 调用父类的 introduce 方法
    print("My thesis topic is $thesisTopic.");
  }
}
void main() {
  var gradStudent = GraduateStudent("Alice", 3, "Machine Learning in Medical Diagnosis");
  gradStudent.introduce();
}

