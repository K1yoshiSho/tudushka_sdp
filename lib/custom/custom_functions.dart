double progressDays(
  DateTime date1,
  DateTime date2,
) {
  DateTime now = DateTime.now();
  DateTime nowDay = DateTime(now.year, now.month, now.day);
  int daysLeft = date2
      .difference(nowDay)
      .inDays;
  int allDays = date2.difference(date1).inDays;
  double inDouble = daysLeft / allDays;
  double result = 1 - inDouble;
  return (result > 0) ? result : 0;
}
