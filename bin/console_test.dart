
import 'dart:math';
import 'package:console_test/console_test.dart' as console_test;

void main(List<String> arguments) {
  print(
      'Putin spent ${format(console_test.calculateWarBudget(), 2)} trillion rubles on the war');
}

String format(double d, int fractionDigits) {
  String res;
  int tr = d.truncate();
  if (tr == d) {
    res = tr.toString();
  } else {
    int digits = ((d - tr) * pow(10, fractionDigits)).round();
    while (digits % 10 == 0) {
      digits ~/= 10;
      fractionDigits--;
    }
    res = d.toStringAsFixed(fractionDigits);
  }
  return res;
}
