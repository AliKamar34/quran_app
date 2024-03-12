class QuranModel {
  final List<SuraModel> data;

  QuranModel({required this.data});

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    return QuranModel(
      data: (json['data'] as List)
          .map((sura) => SuraModel.fromJson(sura))
          .toList(),
    );
  }
}

class SuraModel {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final int numberOfAyahs;
  final List<AyahModel> ayahs;

  SuraModel({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.numberOfAyahs,
    required this.ayahs,
  });

  factory SuraModel.fromJson(Map<String, dynamic> json) {
    return SuraModel(
      number: json['number'],
      name: json['name'],
      englishName: json['englishName'],
      englishNameTranslation: json['englishNameTranslation'],
      numberOfAyahs: json['numberOfAyahs'],
      ayahs: (json['ayahs'] as List)
          .map((ayah) => AyahModel.fromJson(ayah))
          .toList(),
    );
  }
}

class AyahModel {
  final int number;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final String ruku;
  final int hizbQuarter;

  AyahModel({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
  });

  factory AyahModel.fromJson(Map<String, dynamic> json) {
    return AyahModel(
      number: json['number'],
      text: json['text'],
      numberInSurah: json['numberInSurah'],
      juz: json['juz'],
      manzil: json['manzil'],
      page: json['page'],
      ruku: json['ruku'],
      hizbQuarter: json['hizbQuarter'],
    );
  }
}
