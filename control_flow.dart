void main() {
  // 学生入学年份
  var enrollmentYear = 2021;

  // 判断入学年份，并打印相应的时代描述
  if (enrollmentYear >= 2020) {
    print('Enrolled during or after the pandemic'); // 疫情期间或之后入学
  } else if (enrollmentYear >= 2010) {
    print('Enrolled in the 2010s'); // 2010年代入学
  }

  // 学习的科目列表
  var subjects = ['Programming', 'Algorithms', 'Databases', 'AI'];
  // 遍历科目列表并打印
  for (final subject in subjects) {
    print(subject);
  }

  // 打印出8个学期，模拟一个典型的本科学习周期
  for (int semester = 1; semester <= 8; semester++) {
    print('Semester $semester');
  }

  // 使用 while 循环模拟时间流逝，直到2024年
  while (enrollmentYear < 2024) {
    enrollmentYear++;
  }
}
