// import 'package:quran_app/models/ayah_model.dart';

// class SourahModel {
//   final int number;
//   final String name;

//   final String revelationType;
//   final List<Ayah> ayahs;

//   SourahModel({
//     required this.number,
//     required this.name,
//     required this.revelationType,
//     required this.ayahs,
//   });

//   factory SourahModel.fromJson(Map<String, dynamic> json) {
//     return SourahModel(
//       number: json['number'],
//       name: json['name'],
//       revelationType: json['revelationType'],
//       ayahs:
//           (json['ayahs'] as List).map((ayah) => Ayah.fromJson(ayah)).toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'number': number,
//       'name': name,
//       'revelationType': revelationType,
//       'ayahs': ayahs.map((ayah) => ayah.toJson()).toList(),
//     };
//   }
// }
