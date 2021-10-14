# Flutter Cupertino Date Picker

[[fork packages flutter_cupertino_date_picker]](https://pub.dartlang.org/packages/flutter_cupertino_date_picker)

Flutter cupertino date picker.

![Example][1]

## Usage

#### 1\. Depend

Add this to you package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_cupertino_date_picker_fork: ^1.0.1
```

#### 2\. Install

Run command:

```bash
$ flutter packages get
```

#### 3\. Import

Import in Dart code:

```dart
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
```

#### 4\. Display DatePicker

##### Bottom Sheet DatePicker

```dart
/// Display date picker in bottom sheet.
///
/// context: [BuildContext]
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerMode: [DateTimePickerMode] display mode: date(DatePicker)、time(TimePicker)、datetime(DateTimePicker)
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onClose: [DateVoidCallback] date picker closed event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
DatePicker.showDatePicker(
  BuildContext context,
  DateTime minDateTime,
  DateTime maxDateTime,
  DateTime initialDateTime,
  String dateFormat,
  DateTimePickerLocale locale: DATETIME_PICKER_LOCALE_DEFAULT,
  DateTimePickerMode pickerMode: DateTimePickerMode.date,
  DateTimePickerTheme pickerTheme: DatePickerTheme.Default,
  DateVoidCallback onCancel,
  DateVoidCallback onClose,
  DateValueCallback onChange,
  DateValueCallback onConfirm,
});
```

##### DatePicker Widget

```dart
/// Display date picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
DatePickerWidget({
  DateTime minDateTime,
  DateTime maxDateTime,
  DateTime initialDateTime,
  String dateFormat: DATETIME_PICKER_DATE_FORMAT,
  DateTimePickerLocale locale: DATETIME_PICKER_LOCALE_DEFAULT,
  DateTimePickerTheme pickerTheme: DatePickerTheme.Default,
  DateVoidCallback onCancel,
  DateValueCallback onChange,
  DateValueCallback onConfirm,
})
```

##### TimePicker Widget

```dart
/// Display time picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// minuteDivider: [int] minute restriction, e.g. 5: every 5th minute will be shown (0, 5, 10, 15 ...)
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
TimePickerWidget({
  DateTime minDateTime,
  DateTime maxDateTime,
  DateTime initialDateTime,
  String dateFormat: DATETIME_PICKER_DATE_FORMAT,
  DateTimePickerLocale locale: DATETIME_PICKER_LOCALE_DEFAULT,
  DateTimePickerTheme pickerTheme: DatePickerTheme.Default,
  int minuteDivider: 1,
  DateVoidCallback onCancel,
  DateValueCallback onChange,
  DateValueCallback onConfirm,
})
```

##### DateTimePicker Widget

```dart
/// Display date time picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
DateTimePickerWidget({
  DateTime minDateTime,
  DateTime maxDateTime,
  DateTime initialDateTime,
  String dateFormat: DATETIME_PICKER_DATE_FORMAT,
  DateTimePickerLocale locale: DATETIME_PICKER_LOCALE_DEFAULT,
  DateTimePickerTheme pickerTheme: DatePickerTheme.Default,
  DateVoidCallback onCancel,
  DateValueCallback onChange,
  DateValueCallback onConfirm,
})
```

#### 5\. DateTimePickerLocale

Support:

- en_us: English (EN) United States ***[Default locale]***
- he: Hebrew (he)

