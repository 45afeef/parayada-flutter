import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String DD_MM_YYYY = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = DD_MM_YYYY,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

extension TimeDeltaString on int {
  String toReadableTimeDelta({String pattern = 'h:m:s'}) {
    int seconds = this;
    int hours = seconds ~/ 3600;
    seconds %= 3600;
    int minutes = seconds ~/ 60;
    seconds %= 60;

    String formattedTime = pattern
        .replaceAll('h', hours.toString().padLeft(2, '0'))
        .replaceAll('m', minutes.toString().padLeft(2, '0'))
        .replaceAll('s', seconds.toString().padLeft(2, '0'));

    return formattedTime;
  }
}
