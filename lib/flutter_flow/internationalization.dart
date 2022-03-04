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
      'vi': 'Copyright',
      'en': 'Bản quyền',
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
  // tmpPage
  {
    'of1uc7hi': {
      'vi': 'Activity',
      'en': '',
    },
    'yf0725ve': {
      'vi': 'All Activity from this past month.',
      'en': '',
    },
    '16ez7yhl': {
      'vi': '14, Sept. 2021',
      'en': '',
    },
    'gdxq844a': {
      'vi': 'Created New User',
      'en': '',
    },
    'dpr94jjj': {
      'vi': 'Andrew Daniels',
      'en': '',
    },
    'mwgtx43n': {
      'vi': 'Andrew F.',
      'en': '',
    },
    'n878j8pt': {
      'vi': '14, Sept. 2021',
      'en': '',
    },
    'kqqcgg48': {
      'vi': 'Creted a Group',
      'en': '',
    },
    'fko0vbou': {
      'vi': 'Design Team',
      'en': '',
    },
    'ml5q0ybk': {
      'vi': 'Andrew F.',
      'en': '',
    },
    '8lgc8f61': {
      'vi': '14, Sept. 2021',
      'en': '',
    },
    'ak1ex63s': {
      'vi': 'Created Invoice',
      'en': '',
    },
    'tmaa3eqb': {
      'vi': '#402 - Contractor',
      'en': '',
    },
    '8pgjv5oi': {
      'vi': 'Andrew F.',
      'en': '',
    },
    '50f2gt68': {
      'vi': 'Beginning of Activity',
      'en': '',
    },
    '268nb0b6': {
      'vi': 'Home',
      'en': '',
    },
  },
  // DetailPage
  {
    '1be2jd00': {
      'vi': 'Back',
      'en': '',
    },
    'p7lmwouw': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '9vntihoq': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '8t80i2rf': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': '',
    },
    'b7d0mcs5': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en': '',
    },
    '3idj99sl': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en': '',
    },
    'bx3plv6h': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': '',
    },
    'bs5gstuy': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en': '',
    },
    'wxbquw8p': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': '',
    },
    'b0bkteq5': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en': '',
    },
    'eijz6ypg': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': '',
    },
    'sq4mt6im': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en': '',
    },
    'x447njp3': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en': '',
    },
    '0qg3utkm': {
      'vi': 'KHAI THÁC GỖ',
      'en': '',
    },
    'yhl7rfpi': {
      'vi': 'Quyền khai thác',
      'en': '',
    },
    'tgrls90p': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en': '',
    },
    'zhvxm4wu': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en': '',
    },
    'n00rg016': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': '',
    },
    'xz20jkfk': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en': '',
    },
    'qm5cwlyf': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en': '',
    },
    '40w37haw': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en': '',
    },
    '6gzw4h1z': {
      'vi': 'Coutries',
      'en': 'Home',
    },
  },
].reduce((a, b) => a..addAll(b));
