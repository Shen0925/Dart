// 计算学生的平均分数
double calculateAverage(List<int> grades) {
  if (grades.isEmpty) return 0.0;  // 如果成绩列表为空，返回 0.0
  int sum = grades.reduce((value, element) => value + element);
  return sum / grades.length;
}

void main() {
  // 学生的分数列表
  var scores = [88, 94, 70, 85, 90];
  // 调用函数计算平均分，并打印结果
  var averageScore = calculateAverage(scores);
  print('Average score: $averageScore');
}
