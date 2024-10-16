import 'package:intl/intl.dart';

const int synodicPeriod = 2551442877; //29.530588854 days

var knownLuaNova = DateTime.parse("1970-01-07T00:00:00.000Z");

enum MoonPhase {
  luaNova,
  crescente,
  quartoCrescente,
  crescenteGibosa,
  luaCheia,
  minguanteGibosa,
  quartoMinguante,
  minguante,
}

int getLunarDay(DateTime dia) {
  Duration diff = dia.difference(knownLuaNova); // Diferença em milliseconds
  final lunarDay =
      Duration(milliseconds: diff.inMilliseconds % synodicPeriod).inDays;
  return lunarDay;
}

MoonPhase getMoonPhase(int lunarDay) {
  int phaseNum = (lunarDay ~/ 3.7) ;
  return MoonPhase.values[phaseNum];
}

int getLunarDayConway(DateTime ldt) {
  int year = ldt.year;
  int month = ldt.month;
  int day = ldt.day;

  if (year < 1900 || year >= 2100)
    throw Exception("Date must be greater than 1900 and less than 2100");

  double centS = -4.0;
  if (year > 2000) {
    centS = -8.3;
  }
  double lastTwoDigits = year % 100.0;
  double vl = lastTwoDigits % 19;
  if (vl > 9) {
    vl -= 19.0;
  }
  vl *= 11.0;
  vl %= 30;
  vl += centS;

  vl += month + day;
  if (month < 3) {
    vl += 2;
  }

  vl = vl % 30;
  return ((vl < 0) ? vl + 30 : vl).round();
}

void printLunarAnalysis(DateTime ldt) {
  final DateFormat df = DateFormat('dd-MM-yyyy');
  int lunarDay = getLunarDay(ldt);

  print('Data: ${df.format(ldt)}');
  print('Dia lunar: $lunarDay');
  print('Fase da lua (provável): ${getMoonPhase(lunarDay)}');
  print('-'*80);
}

void main() {
  DateTime now = DateTime.now();
  DateTime endDate = now.add(Duration(days: 30));
  
  DateTime dia = now;
  while(dia.isBefore(endDate)) {
    printLunarAnalysis(dia);
    dia = dia.add(Duration(days: 1));
  }

}
