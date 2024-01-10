int calculateWarBudget() {
  var startOfWar = DateTime.parse("2022-02-24 06:00:00");
  print(startOfWar);
  var now = DateTime.now();
  print(now);
  return now.difference(startOfWar).inHours;
}
