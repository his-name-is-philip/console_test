double calculateWarBudget() {
  final startOfWar = DateTime.parse("2022-02-24 06:00:00");
  final now = DateTime.now();
  final res1000x = now.difference(startOfWar).inHours;
  return (res1000x/1000);

}
