import 'dart:math';

part 'strings_en_us.dart';
part 'strings_he.dart';

abstract class _StringsI18n {
  const _StringsI18n();

  /// Get the done widget text
  String getDoneText();

  /// Get the cancel widget text
  String getCancelText();

  /// Get the name of month
  List<String> getMonths();

  /// Get the short name of month
  List<String> getMonthsShort();

  /// Get the full name of week
  List<String> getWeeksFull();

  /// Get the short name of week
  List<String> getWeeksShort();
}

enum DateTimePickerLocale {
  /// English (EN) United States
  en_us,

  /// Hebrew (HE)
  he,
}

/// Default value of date locale
const DateTimePickerLocale DATETIME_PICKER_LOCALE_DEFAULT =
    DateTimePickerLocale.en_us;

const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n = {
  DateTimePickerLocale.en_us: const _StringsEnUs(),
  DateTimePickerLocale.he: const _StringsHe(),
};

class DatePickerI18n {
  /// Get done button text
  static String getLocaleDone(DateTimePickerLocale locale) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getDoneText();
  }

  /// Get cancel button text
  static String getLocaleCancel(DateTimePickerLocale locale) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getCancelText();
  }

  /// Get locale month array
  static List<String>? getLocaleMonths(DateTimePickerLocale locale,
      [bool isFull = true]) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;

    if (isFull) {
      List<String> months = i18n.getMonths();
      return months;
    }

    List<String>? months = i18n.getMonthsShort();
    if (months != null && months.isNotEmpty && months.length == 12) {
      return months;
    }
    return i18n.getMonthsShort();
  }

  /// Get locale week array
  static List<String>? getLocaleWeeks(DateTimePickerLocale locale,
      [bool isFull = true]) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    if (isFull) {
      List<String> weeks = i18n.getWeeksFull();
      return weeks;
    }

    List<String>? weeks = i18n.getWeeksShort();
    if (weeks != null && weeks.isNotEmpty) {
      return weeks;
    }

    List<String> fullWeeks = i18n.getWeeksFull();
    return fullWeeks
        .map((item) => item.substring(0, min(3, item.length)))
        .toList();
  }
}
