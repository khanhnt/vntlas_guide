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
      'vi': 'Danh sách',
      'en': 'List',
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
      'vi': 'Liên hệ',
      'en': 'Contact',
    },
  },
  // DetailPage_Angola
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
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // WelcomeHome
  {
    'qole4qpx': {
      'vi': 'Thực thi các Hệ thống bảo đảm tính hợp pháp của gỗ',
      'en': 'Implementing Timber Legality Assurance Systems ',
    },
    'lmdzg2nz': {
      'vi':
          'Hướng dẫn tuân thủ các yêu cầu về tính hợp pháp của gỗ xuất xứ từ các nước xuất khẩu gỗ quan trọng và hỗ trợ trách nhiệm giải trình',
      'en':
          'A guide to comply with timber legality requirements in key timber exporting countries to support due diligence',
    },
    '5o63eigt': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // DetailPage_Angola_1
  {
    'pmx934b6': {
      'vi': 'Back',
      'en': 'Back',
    },
    'wb0wsm2s': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'xspfbulm': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'iwq3k5fc': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'l8om9d7l': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'kjwrnjgo': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '7pn66ruh': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'f4azkvwe': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'd0bt196y': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'qfazea2c': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '0m9uo64i': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'rbps1b8u': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'foxbc7f3': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'mueup8nf': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    '0x54gybd': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'rphptmmt': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'oww39ewn': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'iu770v5b': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '63c8jh1n': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'ekubxbkp': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'w8nkvbgy': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'x73ls8ko': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Cameroon_1
  {
    'kje1gnbn': {
      'vi': 'Back',
      'en': 'Back',
    },
    'j8lg4c49': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'k950dmuf': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'lnxrz2wz': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'a1zydzcs': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    '7wdztd62': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'h35vk9a0': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'wsm2to6j': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'owhgc7wr': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'yfvsm3z5': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'wvn8kkc6': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'p6augaxo': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '7myu10kh': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'lureg4lp': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'eyij3vl6': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'rqroj2fj': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'nuumiy1r': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'sf6jpf2y': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'vwr0x2w5': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '67q8y7g5': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'alasef94': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'ioru63sm': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Campuchia_1
  {
    'w8n033ya': {
      'vi': 'Back',
      'en': 'Back',
    },
    '6js4mvuz': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'xvhzjw9m': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'nu80gjki': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'jsrq84ia': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'p1k2bvkj': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '98eryq39': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'g5og2gfz': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'q5setvgu': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'iz1nn4lh': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '1iyg5dri': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'uqhglkgq': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'qeffcxny': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'recircea': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'pfwmctiz': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'aj1yziv7': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'lu316bqe': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '0xcdxkqa': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '1fevdje0': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '7twg5jkj': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'vui613c7': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '3sc77iej': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Congo_1
  {
    'ghex2v69': {
      'vi': 'Back',
      'en': 'Back',
    },
    'tft1vxay': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '1nwuckqh': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'm3s5se17': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'qgzeelrb': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'p1r23p2s': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'hl2clsyu': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'j8xvkm5u': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'fmzygmc9': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'yri7o8a6': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'x1n1zk1p': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'lxrf4vha': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'm1b0wdo3': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'qkhuu55k': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'hacess39': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'whk7khvc': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'jh6bxmdb': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'q1u81dwc': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'liv10bsn': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'qjyxqr70': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'bj59iemj': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'fgp6ydm9': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_DRC_1
  {
    'ougzo3f3': {
      'vi': 'Back',
      'en': 'Back',
    },
    'whkswz65': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'avw9rwu9': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'owknk583': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'm7e9bifs': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    '7cbptnx4': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '4wbdwl5o': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'slxnndfj': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '20tb5glr': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    't6txyofr': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '2deujm7o': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'ifzhv9uu': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'vq4xd74y': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '009ut8vo': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'ti2841r7': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '5f514bi4': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '8gxj2fwq': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'qm6lah20': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'iuqodprt': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'nd7grurn': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'knfbhp3z': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '660xmmur': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Gabon_1
  {
    'q0jrphld': {
      'vi': 'Back',
      'en': 'Back',
    },
    'y86b934b': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'pbooj0qq': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'uqstssi4': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'kk9yvrhk': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'a79s383y': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'kuh7rlce': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'bll5atwj': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'h72rh4yj': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'n5ae4arl': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'kmurvqqz': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'v402pjuf': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'upwm2ues': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'mt113x7z': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'mtlx6yhn': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'ibolzhcq': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '05wsy8yo': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'i1t72lik': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '2jy6piz8': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'tybifnog': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    '66c31tjw': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '340cvt76': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Ghana_1
  {
    'ykh3ew4q': {
      'vi': 'Back',
      'en': 'Back',
    },
    'fy0t5dx6': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'oc119vgd': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'poiu6mqi': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'hygl8gc8': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'tvpbs7gy': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '4xyprkm7': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'rg2jzfpy': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'dj51l2eb': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '5hgu26tr': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'qs733fq7': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'e4evww3d': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '8orq5fzf': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'lkzxok6q': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'f45jxqua': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'ztdbgcqc': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'dhhlf075': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'gyvzg522': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'aq200iqh': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'ie54b1ol': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'egbzen4v': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '7divj7e2': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Lao_1
  {
    '0gt4e1yf': {
      'vi': 'Back',
      'en': 'Back',
    },
    'l1l9v4tv': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'vrkxmkjx': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '9ci38icm': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'txhahhy1': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'by70a1ag': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '2ns2ovf3': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'ceyibgvr': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'z5m6cy22': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'xtbo9bkf': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'z15cf31t': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'am4zb8p0': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '0qawthjx': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'fcfc9pgf': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'mo1a3ss3': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'ri8k688t': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'l16kdb5b': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '87lh3idy': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '22a4fq24': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'yli33p7e': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'q3k00qfb': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '0kokx3ns': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Nigeria_1
  {
    'j6ydv4i7': {
      'vi': 'Back',
      'en': 'Back',
    },
    'ujyo4yh8': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'qjhreomy': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'pf7b5lim': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'v87sjzfs': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'xpf808di': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'q83u1c1p': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'gtwgsjns': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'hnfbcm5p': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'uc29zry0': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '1blfke0q': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'docok2cr': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'ndkoahz7': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'v8yzzxjb': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    '4rltqid2': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'n04cr4ce': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'zgoxuqiv': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'b1b3u7pf': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'c76wrcpl': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'uhhfsjy4': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'm7w6wyqz': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '9r0knm8z': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Guinea_1
  {
    'jiqup8w3': {
      'vi': 'Back',
      'en': 'Back',
    },
    'adqmyu1h': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'pujytoy3': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '7v9olw8h': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'h4lf3eur': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'kfa4a1qg': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '48velney': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '0zvbxcew': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'nb6e7fe5': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '7cn4uqdp': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'ijtfi0pl': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'csn3he3r': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'e5zfacup': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'dfknkdvu': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'ws0wzz3d': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '62cbgd26': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'hir7i98n': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'pttp0bfd': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '1gzjfnlq': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '388igjkl': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'kteb97u7': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '0cfzkxu1': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Campuchia
  {
    't5wcs3q3': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    '3m4sof4b': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '8h4y8rst': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'rnfeo40u': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'b0cb3c17': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'tbfbsm3r': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '1wpvfo3l': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'zn8o1983': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'ohqiaxl0': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'u2nqkl6q': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'f81x60e9': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'n2lh0f50': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '4zs9pbyt': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '8d57js0d': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'huamkyhy': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'a8o8t6wi': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'kkv9qlxd': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '9mmlftly': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'v3svmjle': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'mlsfjagp': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'l0rvxdf3': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'gdbdej73': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Cameroon
  {
    '93cv4l4k': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    '1zb05elm': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '5d1wipuw': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'ahfudeqh': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'cu37r7aj': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    '8gvey17q': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'd2miqgf6': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '1ikwtl6y': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'f4ocg4zj': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'jootoe54': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'sh0l247m': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'a9bkpzo2': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'yn7sy7rq': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'co1ioqlp': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'fnuokr8v': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'auhfkxsy': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'qagz67g9': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'q4tvbl0t': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'okoc8yyw': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'ky6nrsgq': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    '5xb32wc6': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '5qs4iw1f': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Congo
  {
    'qwc67tom': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'ykr3oquq': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'wmya0swe': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'rp8b2c1d': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    '5smd3hj6': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'd7985m4y': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'y8y577es': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'elom4hiz': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '7lim3niv': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '8elftbcv': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'tygfgdxf': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'rfsrdqj5': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'z534t9iv': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'afg8t8yo': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'xkfasjoy': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'ywaxexkf': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'ycbq15vd': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '46am4f0u': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'ohuzq075': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '7o9ucokp': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'f55d016s': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'n51ic1pz': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_DRC
  {
    'gxi2n7a3': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'ayra427r': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '4uh3ywpg': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'i2pj32yt': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'q1vmqhkv': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    '7frtpdy3': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'sv74sn4j': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'ztshbsmq': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'k6nvygkk': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'w99x04zl': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'ouwui7j3': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'tztvxg1c': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'imajmrwy': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '0l0x68n3': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'zjv85mk4': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '7g4gq9p8': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'bgyoreo8': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'k0g6lslg': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'pe59e9ni': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'hdpdtnxv': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'bcni3mxr': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '7ju88yp5': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Gabon
  {
    'zs9ac2hp': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'c3wacdtd': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '8a3omro8': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '65gmz9wj': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    '3z1dze6w': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'yogwaft5': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'i2p8xi49': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'hbmyufvw': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '4qo5s9zk': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '0nq7yuxb': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'rypi6iyv': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'u8jzjqf9': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '12fqf833': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '22qburlg': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'ph8va3uz': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '2llcqy0i': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'ay4xgfr5': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'mjyaovbs': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'wqc4ooxa': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'qi39gwm9': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'y7crlvje': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'utv5rwq0': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Ghana
  {
    '82hj65yp': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'x2vuc2i3': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'xvmd9wck': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'oybf9jin': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'e8a48n2i': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'lvyk9v49': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'z6y4q11z': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'sk3sz9pa': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'xwsvnnut': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'unkcugeh': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'i4wtond2': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'ftolv3pg': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    '2i9bmyeo': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '3jro53hs': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'fvniv84s': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'gz1zknzu': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '7997573e': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'tisfxtit': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'fvrlwojs': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'u3alat89': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'wbg04tkx': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'wetdapvz': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Guinea
  {
    '0rq9p5xc': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'atyw8wu5': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'g4kesqzh': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'tw6hmjzr': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'y1ruhp27': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'llniw31e': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'ldn70l4w': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '4f2ti7jl': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'exrcfs3d': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'g7u6y2ae': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'kfxeg1d7': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'uiralzvx': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'ej06ubyv': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'i6pnv06g': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'ohfdj0pm': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '1z7spla8': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '4a3lp5du': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '5j57tmkc': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'iu1g6qy9': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    't9d3bt3f': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    '2yiipp17': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'xoa8d4mm': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Laos
  {
    'bhrv982r': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'en0l1or8': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '9gzi3ufu': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'rguzxkp5': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'r0shtr1t': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'cu2zvipw': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'umz6g509': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '4k154dec': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '8guuku08': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'xxccmluc': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'wkz3l141': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'dxcfbwja': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'fyijg8y3': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'ujmp5akv': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'gi62cvpe': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'tmeuglj2': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '3qvne1j9': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'isvgh0r2': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'nb38ar8k': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'tz13vquk': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'ihxsusxt': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'z3vexbcn': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_Nigeria
  {
    'j0d8ee4w': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    '36renjvm': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'gj6ssyaa': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'qivuttbr': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'ldev77h2': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'kdjoc38j': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    '2vyciquv': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'gj6aqikt': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '5ylbnwf5': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'xorqa2ar': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '94reahay': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'f806o340': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'yvtu5a7g': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '9rqlynj3': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'f4h1iz2j': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '6kokg7vy': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'vvzqobla': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'pmg38avq': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '4ccnes7v': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'qipfnkve': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    '4zyxsbo2': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '73rlrrih': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
].reduce((a, b) => a..addAll(b));
