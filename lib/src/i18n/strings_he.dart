part of 'date_picker_i18n.dart';

/// Hebrew (he)
class _StringsHe extends _StringsI18n {
  const _StringsHe();

  @override
  String getCancelText() {
    // TODO return cancel widget's text
    return 'ביטול';
  }

  @override
  String getDoneText() {
    // TODO return done widget's text
    return 'אישור';
  }

  @override
  List<String> getMonths() {
    return ['ינואר','פברואר','מרץ','אפריל','מאי','יוני','יולי','אוגוסט','ספטמבר','אוקטובר','נובמבר','דצמבר'];
  }

  @override
  List<String> getWeeksFull() {
    // TODO return the array of week's full name [Monday, Tuesday ... Sunday]
    return ["שני","שלישי","רביעי","חמישי","שישי","שבת","ראשון"];
  }

  @override
  List<String> getWeeksShort() {
    // TODO return the array of week's short name [Mon, Tue ... Sun]
    return ["ב","ג","ד","ה","ו","ש","ר"];
  }
}
