// 定义课程难度的枚举类型
enum Difficulty { Easy, Medium, Hard }

// 增强型枚举，定义了一组课程及其属性
/// 枚举不同课程以及它们的难度等级和预计学习时间
enum Course {
  Programming(Difficulty: Difficulty.Medium, hoursPerWeek: 10),
  Mathematics(Difficulty: Difficulty.Hard, hoursPerWeek: 15),
  English(Difficulty: Difficulty.Easy, hoursPerWeek: 5),
  Physics(Difficulty: Difficulty.Hard, hoursPerWeek: 15);

  // 常量构造函数
  const Course({required this.Difficulty, required this.hoursPerWeek});

  // 所有实例变量都是最终的
  final Difficulty Difficulty;
  final int hoursPerWeek;

  // 支持获取方法的增强型枚举
  bool get isDifficult => Difficulty == Difficulty.Hard;
}

void main() {
  // 使用枚举
  final myCourse = Course.Physics;

  // 判断课程是否难
  if (myCourse.isDifficult) {
    print('Your course is difficult and requires ${myCourse.hoursPerWeek} hours per week.');
  } else {
    print('Your course is not that difficult.');
  }
}
