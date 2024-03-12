// class Ayah {
//   final int number;
//   final String audio;
//   final List<String> audioSecondary;
//   final String text;
//   final String ayaTextEmlaey;
//   final int numberInSurah;
//   final int juz;
//   final int manzil;
//   final int page;
//   final int pageInSurah;
//   final int ruku;
//   final int hizbQuarter;
//   final bool sajda;
//   final String codeV2;

//   Ayah({
//     required this.number,
//     required this.audio,
//     required this.audioSecondary,
//     required this.text,
//     required this.ayaTextEmlaey,
//     required this.numberInSurah,
//     required this.juz,
//     required this.manzil,
//     required this.page,
//     required this.pageInSurah,
//     required this.ruku,
//     required this.hizbQuarter,
//     required this.sajda,
//     required this.codeV2,
//   });

//   factory Ayah.fromJson(Map<String, dynamic> json) {
//     return Ayah(
//       number: json['number'],
//       audio: json['audio'],
//       audioSecondary: json['audioSecondary'].cast<String>(),
//       text: json['text'],
//       ayaTextEmlaey: json['aya_text_emlaey'],
//       numberInSurah: json['numberInSurah'],
//       juz: json['juz'],
//       manzil: json['manzil'],
//       page: json['page'],
//       pageInSurah: json['pageInSurah'],
//       ruku: json['ruku'],
//       hizbQuarter: json['hizbQuarter'],
//       sajda: json['sajda'],
//       codeV2: json['code_v2'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'number': number,
//       'audio': audio,
//       'audioSecondary': audioSecondary,
//       'text': text,
//       'aya_text_emlaey': ayaTextEmlaey,
//       'numberInSurah': numberInSurah,
//       'juz': juz,
//       'manzil': manzil,
//       'page': page,
//       'pageInSurah': pageInSurah,
//       'ruku': ruku,
//       'hizbQuarter': hizbQuarter,
//       'sajda': sajda,
//       'code_v2': codeV2,
//     };
//   }
// }
