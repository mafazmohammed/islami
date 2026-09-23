import 'package:islami/core/resources/data/app_constants.dart';

class QuranModel {
  final int id;
  final String arabicName;
  final String englishName;
  final String ayahNumber;

  const QuranModel({
    required this.id,
    required this.arabicName,
    required this.englishName,
    required this.ayahNumber,
  });

  static List<QuranModel> suras = List.generate(114, (index) {
    return QuranModel(
      id: index + 1,
      arabicName: arabicQuranSuras[index],
      englishName: englishQuranSuras[index],
      ayahNumber: ayaNumber[index],
    );
  });
}
