abstract class DateTimeUtils {
  static DateTime fromJson(int value) =>
      DateTime.fromMillisecondsSinceEpoch(value);

  static int toJson(DateTime time) => time.millisecondsSinceEpoch;

  static DateTime? fromJsonOptional(int? value) {
    if (value == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(value);
  }

  static int? toJsonOptional(DateTime? time) {
    if (time == null) return null;
    return time.millisecondsSinceEpoch;
    ;
  }
}
