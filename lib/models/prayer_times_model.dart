class PrayerTimingsModel {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
    final String day;
  final String date;
  final String hijriDay;
  final String hijriMonth;
  final String hijriYear;

  PrayerTimingsModel({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
     required this.hijriDay,
    required this.hijriMonth,
    required this.hijriYear,
    required this.day,
    required this.date,
  });

  factory PrayerTimingsModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimingsModel(
      fajr: json['data']['timings']['Fajr'],
      sunrise: json['data']['timings']['Sunrise'],
      dhuhr: json['data']['timings']['Dhuhr'],
      asr: json['data']['timings']['Asr'],
      maghrib: json['data']['timings']['Maghrib'],
      isha: json['data']['timings']['Isha'],
      hijriDay: json['data']['date']['hijri']['day'],
      hijriMonth: json['data']['date']['hijri']['month']['ar'],
      hijriYear: json['data']['date']['hijri']['year'],
      day: json['data']['date']['hijri']['weekday']['ar'],
      date: json['data']['date']['gregorian']['date'],
    );
  }
}

