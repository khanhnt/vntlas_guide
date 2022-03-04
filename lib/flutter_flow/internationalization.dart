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
      'en': 'Home',
    },
  },
  // ListAll
  {
    'vvfaj285': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'njg54w3f': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'e3bkl5ph': {
      'vi': 'Ăng gô la',
      'en': 'Angola',
    },
    'e6vmxfvh': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'lekab7e9': {
      'vi': 'Cam pu chia',
      'en': 'Cambodia',
    },
    'ys8lqwvy': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    '5001l0vm': {
      'vi': 'Ca mơ run',
      'en': 'Cameroon',
    },
    'b50r877l': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'idmwpzvq': {
      'vi': 'Cộng hòa Công gô',
      'en': 'Congo',
    },
    'he0si7ru': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    '9z6y4v4r': {
      'vi': 'Cộng hòa DC Công gô',
      'en': 'DRC',
    },
    'agkppb88': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    '8ioj1xrq': {
      'vi': 'Ga-bông',
      'en': 'Gabon',
    },
    '2024aa5f': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'fv9ecoot': {
      'vi': 'Ga-na',
      'en': 'Ghana',
    },
    'a437v4jn': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    's6ov1v3x': {
      'vi': 'Guinée',
      'en': 'Guinea ',
    },
    'uwgfehri': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'f7y1nc41': {
      'vi': 'Lào',
      'en': 'Laos',
    },
    'rdtu9fhy': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'u1uywtec': {
      'vi': 'Nigeria',
      'en': 'Nigeria',
    },
    '3hflo66n': {
      'vi': 'Thông tin',
      'en': 'Description',
    },
    'v26lgb95': {
      'vi': 'Coutries',
      'en': 'Home',
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
      'vi': 'Bản quyền',
      'en': 'Copyright',
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
      'en': 'Liên hệ',
    },
  },
  // DetailPage
  {
    'bg6diwlu': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'p7lmwouw': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '9vntihoq': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '90al7d9s': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    '8ifm7qdu': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'qzrmlb0k': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'nqwmrhvy': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '8sb59sr3': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'waddxffr': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '4pc2twto': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '0nfwqsfp': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    '1hxwt71l': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'kc3qwg3p': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '9481tu68': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'zin7w3c9': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'ntn8kprn': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'juu65wvv': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'lvyuv1d9': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '0jupqhp2': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'lhae9ye1': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'a3fzu830': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '6gzw4h1z': {
      'vi': 'Coutries',
      'en': 'Đất nước',
    },
  },
].reduce((a, b) => a..addAll(b));
