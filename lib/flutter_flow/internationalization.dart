import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['vi', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String viText = '',
    String enText = '',
  }) =>
      [viText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    '3jiuun36': {
      'vi': 'Thực thi các Hệ thống bảo đảm tính hợp pháp của gỗ',
      'en': 'Implementing Timber Legality Assurance Systems ',
    },
    'ayictqw9': {
      'vi':
          'Hướng dẫn tuân thủ các yêu cầu về tính hợp pháp của gỗ xuất xứ từ các nước xuất khẩu gỗ quan trọng và hỗ trợ trách nhiệm giải trình',
      'en':
          'A guide to comply with timber legality requirements in key timber exporting countries to support due diligence',
    },
    'x70g5tzd': {
      'vi': 'Home',
      'en': '',
    },
  },
  // ListAll
  {
    'vvfaj285': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'njg54w3f': {
      'vi': 'Find your friend by na',
      'en': '',
    },
    'e3bkl5ph': {
      'vi': 'Ăng gô la',
      'en': 'Angola',
    },
    'e6vmxfvh': {
      'vi': 'Description',
      'en': '',
    },
    'lekab7e9': {
      'vi': 'Cam pu chia',
      'en': 'Cambodia',
    },
    'ys8lqwvy': {
      'vi': 'Description',
      'en': '',
    },
    '5001l0vm': {
      'vi': 'Ca mơ run',
      'en': 'Cameroon',
    },
    'b50r877l': {
      'vi': 'Description',
      'en': '',
    },
    'idmwpzvq': {
      'vi': 'Cộng hòa Công gô',
      'en': 'Congo',
    },
    'he0si7ru': {
      'vi': 'Description',
      'en': '',
    },
    '9z6y4v4r': {
      'vi': 'Cộng hòa DC Công gô',
      'en': 'DRC',
    },
    'agkppb88': {
      'vi': 'Description',
      'en': '',
    },
    '8ioj1xrq': {
      'vi': 'Ga-bông',
      'en': 'Gabon',
    },
    '2024aa5f': {
      'vi': 'Description',
      'en': '',
    },
    'fv9ecoot': {
      'vi': 'Ga-na',
      'en': 'Ghana',
    },
    'a437v4jn': {
      'vi': 'Description',
      'en': '',
    },
    's6ov1v3x': {
      'vi': 'Guinée',
      'en': 'Guinea ',
    },
    'uwgfehri': {
      'vi': 'Description',
      'en': '',
    },
    'f7y1nc41': {
      'vi': 'Lào',
      'en': 'Laos',
    },
    'rdtu9fhy': {
      'vi': 'Description',
      'en': '',
    },
    'u1uywtec': {
      'vi': 'Nigeria',
      'en': 'Nigeria',
    },
    '3hflo66n': {
      'vi': 'Description',
      'en': '',
    },
    'v26lgb95': {
      'vi': 'Home',
      'en': '',
    },
  },
  // GridAll
  {
    'yhck7kwe': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'gx5gd42z': {
      'vi': 'Find your friend by na',
      'en': '',
    },
    '7xzokspx': {
      'vi': 'Ăng go la',
      'en': 'Angola',
    },
    'awdy6rzj': {
      'vi': 'Cam pu chia',
      'en': 'Cambodia',
    },
    'ydcrt99x': {
      'vi': 'Ca mơ run',
      'en': 'Camorun',
    },
    'i6sdgm2j': {
      'vi': 'CH Công gô',
      'en': 'Congo',
    },
    'm2dem4oe': {
      'vi': 'CHDC Công gô',
      'en': 'DRC',
    },
    '9qigdfs5': {
      'vi': 'Ga-bông',
      'en': 'Gabon',
    },
    '1711w3fh': {
      'vi': 'Ga-na',
      'en': 'Ghana',
    },
    'zyxtpwib': {
      'vi': 'Guinée',
      'en': 'Guinea',
    },
    'yqvjj8r5': {
      'vi': 'Lào',
      'en': 'Laos',
    },
    'veq5l1md': {
      'vi': 'Nigeria',
      'en': 'Nigeria',
    },
    'vxfyi6bn': {
      'vi': 'Copyright',
      'en': '',
    },
  },
  // Main
  {
    '0t5ft1wh': {
      'vi': 'VNTLAS',
      'en': '',
    },
    '282tui8g': {
      'vi': 'Search for classes...',
      'en': '',
    },
    'o5gfr4kf': {
      'vi': 'Search by name, location etc...',
      'en': '',
    },
    'sf5sc8ud': {
      'vi': 'Workout Categories',
      'en': '',
    },
    '76ee5wdl': {
      'vi': 'Yoga',
      'en': '',
    },
    'uyjlavtb': {
      'vi': 'Karate',
      'en': '',
    },
    '0y06gpnt': {
      'vi': 'Weightroom',
      'en': '',
    },
    'q4s9f52z': {
      'vi': 'Cycling',
      'en': '',
    },
    '31lwzs26': {
      'vi': 'Running',
      'en': '',
    },
    '8ado51fn': {
      'vi': 'Upcoming Classes',
      'en': '',
    },
    '6q0buc2b': {
      'vi': 'Class Name',
      'en': '',
    },
    'ytzhh1ed': {
      'vi': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
    },
    'cseowp8p': {
      'vi': 'Reserve',
      'en': '',
    },
    '4n448gre': {
      'vi': 'Class Name',
      'en': '',
    },
    'pl08s1he': {
      'vi': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
    },
    'dux58nq7': {
      'vi': 'Reserve',
      'en': '',
    },
    'v5o6366z': {
      'vi': 'Class Name',
      'en': '',
    },
    'iyluvlsp': {
      'vi': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
    },
    'sihebijz': {
      'vi': 'Reserve',
      'en': '',
    },
    '3jhdq7k1': {
      'vi': 'Contact',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
