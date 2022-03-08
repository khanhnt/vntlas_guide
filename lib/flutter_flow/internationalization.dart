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
      'vi': 'Danh sách',
      'en': 'Copyright',
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
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'dsl5fpkc': {
      'vi': 'Cam pu chia',
      'en': 'Cambodia',
    },
    'ax9covpu': {
      'vi': 'Châu Á',
      'en': 'Asia',
    },
    '5001l0vm': {
      'vi': 'Ca mơ run',
      'en': 'Cameroon',
    },
    'b50r877l': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'idmwpzvq': {
      'vi': 'Cộng hòa Công gô',
      'en': 'Congo',
    },
    'he0si7ru': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    '9z6y4v4r': {
      'vi': 'Cộng hòa DC Công gô',
      'en': 'DRC',
    },
    'agkppb88': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    '8ioj1xrq': {
      'vi': 'Ga-bông',
      'en': 'Gabon',
    },
    '2024aa5f': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'fv9ecoot': {
      'vi': 'Ga-na',
      'en': 'Ghana',
    },
    'a437v4jn': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    's6ov1v3x': {
      'vi': 'Guinée',
      'en': 'Guinea ',
    },
    'uwgfehri': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'f7y1nc41': {
      'vi': 'Lào',
      'en': 'Laos',
    },
    'rdtu9fhy': {
      'vi': 'Châu Á',
      'en': 'Asia',
    },
    'u1uywtec': {
      'vi': 'Nigeria',
      'en': 'Nigeria',
    },
    '3hflo66n': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'v26lgb95': {
      'vi': 'Danh sách',
      'en': 'List',
    },
  },
  // DetailPage_Angola
  {
    '6g6694gn': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'tbpoihh6': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '757b26xb': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '90al7d9s': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    '8ifm7qdu': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.\n',
    },
    'eqwym9ws': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'vwxbllk4': {
      'vi': '',
      'en': '',
    },
    '5j4bcnbp': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '0a1ftc67': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'k7tp3zec': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '0ypmuac1': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    '343xn4ng': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'lhfqzols': {
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
    '32xiwx12': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    '8pc31klh': {
      'vi': '',
      'en': '',
    },
    'ofr2dg1g': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    'xebmj874': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '4guf86ys': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'xxxic2yw': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '8d3khsrw': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '30nz7iuv': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'xv62v5yu': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). \n',
    },
    'vtktrd52': {
      'vi': 'VẬN TẢI VÀ THƯƠNG MẠI GỖ',
      'en': 'TRADE & TRANSPORT ',
    },
    'ogf8bt1f': {
      'vi': '',
      'en': '',
    },
    'pb568nnr': {
      'vi':
          'Thực hiện tuân thủ đầy đủ các thủ tục vận chuyển và kiểm tra xuất khẩu gỗ',
      'en':
          'Implement full compliance with timber transport and export inspections',
    },
    '6tpf6bwx': {
      'vi':
          '• Giấy chứng nhận xuất xứ\nCần đối chiếu thông tin với Giấy phép khai thác rừng và Giấy phép quá cảnh, cần kiểm tra kỹ tỉnh xuất xứ, khối lượng và loài cây, Giấy chứng nhận xuất xứ phải được ký bởi Viện trưởng Viện Phát triển Lâm nghiệp cấp tỉnh cũng như nhân viên điểm kiểm tra hoặc nhân viên kho.\n',
      'en':
          '•\tCertificate of Origin \nCross-check with information on the Forest Exploitation License and Transit Permit, carefully check the province of origin and the volume and species of trees, and ensure the Certificate of Origin has been signed by the Provincial Head of the IDF as well as check point or warehouse personnel. \n',
    },
    '2ui6xz6m': {
      'vi': 'Giấy chứng nhận xuất xứ',
      'en': 'Certificate of Origin',
    },
    '2g25vbp7': {
      'vi':
          '  \t• Giấy phép quá cảnh\nCần đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép khai thác rừng, cần kiểm tra loài cây và khối lượng được quy định, và đảm bảo ngày còn hiệu lực và Giấy phép quá cảnh đã được ký bởi nhân viên kho và Viện trưởng Viện Phát triển Lâm nghiệp cấp tỉnh được đóng dấu của IDF.\n\n \t• Giấy phép xuất khẩu (Documento Único Provisório)\nCần đối chiếu với các tài liệu chuỗi cung ứng khác và đảm bảo Giấy phép đã được ký bởi Cục trưởng Cục Ngoại thương, Bộ Công Thương (Ministério da Indústria e Comércio). Cần kiểm tra chéo thông tin khối lượng sản phẩm, mô tả, phương tiện vận chuyển, chủng loại, giá trị hàng hóa của nhà xuất khẩu, nhà nhập khẩu trên giấy phép xuất khẩu với các tài liệu khác.\n',
      'en':
          '•\tTransit Permit \nCross-check with information on the Certificate of Origin and Forest Exploitation License, check the tree species and volumes specified, and ensure the date is valid and the Permit has been signed by warehouse personnel and signed and stamped by the Provincial Head of the IDF.\n\n•\tExport License (Documento Único Provisório)\nCross-check with other supply chain documents and ensure the License has been signed by the Director of External Trade, Ministry of Industry and Trade (Ministério da Indústria e Comércio). Cross-check information on product volume, description, means of transport, type and value of goods of exporters and importers on export License with other documents.\n',
    },
    'hyzaw4i0': {
      'vi': 'Giấy phép xuất khẩu (Documento Único Provisório)',
      'en': '•\tExport License (Documento Único Provisório)',
    },
    'jzjylnf3': {
      'vi':
          'Đảm bảo tuân thủ Công ước về buôn bán quốc tế các loài động, thực vật hoang dã nguy cấp (CITES)',
      'en':
          'Assure compliance with the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES)',
    },
    '0vsib61k': {
      'vi':
          '• Giấy phép CITES\nGiấy phép CITES phải do Cơ quan quản lý CITES quốc gia của Bộ Môi trường cấp. Cần kiểm tra chữ ký và dấu của Cơ quan CITES, tên chữ ký người nộp đơn/ người xin giấy phép xuất khẩu, tên cảng xuất khẩu. \n',
      'en':
          '• CITES Permit\nCITES permits are issued by the National CITES Management Authority of the Ministry of Environment. Check the signature and seal of the CITES Management Authority, the name of the applicant / applicant\'s signature for the export permit, the name of the port of export.\n',
    },
    'acjuuej9': {
      'vi': 'Giấy phép CITES',
      'en': 'CITES Permit',
    },
    'no7zu197': {
      'vi': 'CHẾ BIẾN GỖ',
      'en': 'PROCESSING ',
    },
    'pvr514j2': {
      'vi': '',
      'en': '',
    },
    '3rj19lgo': {
      'vi':
          'Đảm bảo tuân thủ quy định về đăng ký kinh doanh và môi trường của cơ sở chế biến gỗ',
      'en':
          'Assure compliance with regulations on business registration and the environment of wood processing establishments',
    },
    '2vj16jsb': {
      'vi':
          '• Giấy phép môi trường vận hành \nGiấy phép môi trường vận hành phải do Bộ trưởng Bộ Môi trường hoặc người được ủy quyền ký và đóng dấu của Bộ Môi trường. Cần kiểm tra tài liệu, chữ ký và con dấu, thời hạn hiệu lực, nơi phát hành của giấy phép. \n',
      'en':
          '• Environmental Operating License (Licença Ambiental de Operação)  \nThe environmental operating license is signed by the Minister of Environment or an authorized person and stamped by the Ministry of Environment. Check the document, signature and seal, validity of date, place of issue of the license.\n',
    },
    '2lejgy0p': {
      'vi': 'Giấy phép môi trường vận hành  (Licença Ambiental de Operação) ',
      'en': 'Environmental Operating License (Licença Ambiental de Operação) ',
    },
    '642rw7pg': {
      'vi':
          '• Giấy phép thương mại\nGiấy phép thương mại phải do Tổng cục trưởng Tổng cục Nội thương, Bộ Công thương ký và đóng dấu. Cần kiểm tra tài liệu, chữ ký và con dấu, thời hạn hiệu lực, nơi phát hành của giấy phép.\n ',
      'en':
          '• Commercial license\nThe commercial license is signed and stamped by the Director General of the General Department of Internal Trade, Ministry of Industry and Trade. Check the document, signature and seal, validity of date, place of issue of the license.\n',
    },
    'jyf4i2zs': {
      'vi':
          'Đảm bảo rằng các doanh nghiệp chế biến đã tuân thủ các quy định về an toàn và vệ sinh lao động',
      'en':
          'Assure that timber processing companies have complied with health and safety regulations',
    },
    '73hbk5c0': {
      'vi':
          '• Báo cáo Sở An toàn và Vệ sinh lao động\nNhà nhập khẩu có thể yêu cầu nhà xuất khẩu gỗ cung cấp báo cáo Sở an toàn và vệ sinh lao động đối với các công ty có từ 50 nhân viên trở lên.\n',
      'en':
          '•\tOccupational Health and Safety Services Reports \nImporters can request monthly, quarterly and annual reports for companies with 50 or more employees.\n',
    },
    'xcibtvul': {
      'vi':
          'Đảm bảo tuân thủ các quy định về trả lương và đóng góp an sinh xã hội',
      'en':
          'Assure compliance with regulations on paid the wage and made social security contributions',
    },
    'p6n6uspg': {
      'vi':
          '• Thư thông báo an sinh xã hội\nThư thông báo an sinh xã hội phải do Bộ Công chính – Lao động và An sinh xã hội (Ministério da Aministração Pública, Emprego y Segurança Social - MAPESS) ấn hành. Cần kiểm tra số lượng công nhân có thu nhập so với đóng góp an sinh xã hội, xác minh tại chỗ hồ sơ thanh toán phù hợp với Thư thông báo.\n',
      'en':
          '• The social security award letter \nThe social security award letter is published by the Ministry of Public Administration, Employment and Social Security (Ministério da Aministração Pública, Emprego y Segurança Social - MAPESS). Check the number of workers with income compared to social security contributions, verify on-site payment records in accordance with the award letter. \n',
    },
    'ahzvrhl7': {
      'vi': 'CÁC VẤN ĐỀ XUYÊN SUỐT',
      'en': 'CROSS-CUTTING ISSUES',
    },
    '16225s1f': {
      'vi': '',
      'en': '',
    },
    'nhsux2lr': {
      'vi': 'Tuân thủ các quy định về lao động',
      'en': 'Compliance with labor regulations',
    },
    'ncy0904q': {
      'vi':
          '• Hợp đồng lao động \nHợp đồng lao động được áp dụng cho một số loại công việc nhất định. Xác minh tại chỗ người lao động có hợp đồng lao động phù hợp lĩnh vực cho phép.\n\n• Thư thông báo an sinh xã hội\nThư thông báo an sinh xã hội do MAPESS ấn hành.\n\n• Báo cáo Sở An toàn và Vệ sinh lao động\nNhà nhập khẩu có thể yêu cầu nhà xuất khẩu gỗ cung cấp báo cáo Sở an toàn và vệ sinh lao động đối với các công ty có từ 50 nhân viên trở lên.\n',
      'en':
          '• Labor contract\nLabor contract is applicable to certain types of work. Verify on-site the employee has a suitable labor contract in the sector.\n\n\t• The award letter social security\nThe award letter social security is published by the MAPESS.\n\n• Occupational Health and Safety Services Reports \nImporters can request Occupational Health and Safety Services Reports for companies with 50 or more employees.\n',
    },
    'h21s0yzn': {
      'vi':
          'Để biết thêm thông tin về Quy định pháp luật của gỗ từ Angola, vui lòng truy cập:',
      'en': 'More information on Timber Legality Requirements from Angola at:',
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
  // DetailPage_Campuchia
  {
    '4vh1473a': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'ne5yobzp': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'b2cuj5sy': {
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
  // DetailPage_Congo
  {
    'bbthga8w': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'qn7odefh': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '6k4vuwnf': {
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
  // DetailPage_Cameroon
  {
    'pgcgi9nm': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'xo93lwl5': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'hrecz1zz': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '8tlj44pb': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'ayn5s462': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'f545dp9d': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'qc243fql': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'cj2iagkf': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'fm1xfv4k': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    '8tdxcu94': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'mf1o0in2': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'eonsl7o9': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'pbabp7ax': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    '3pmzpxrb': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    '13p029ue': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '674l7pol': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    '6p81xd5o': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    '53ljmv9p': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'u393i49f': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '60mw59u3': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'eygevd3z': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    '1ngia83x': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'HARVESTING TIMBER',
    },
    'ogm2jvzq': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    'xlgxnw1w': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    'p8eptqlh': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    '0zw38yd4': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'wen0y6cp': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'ns83d7sf': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'mzybpba2': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en':
          'Suggestions for developing and implementing due diligence for importers',
    },
    'xt1si07x': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'nm1dhbtv': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'mswqtatk': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'f6vp08jy': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    '3m3ok32q': {
      'vi':
          'Để biết thêm thông tin về Quy định pháp luật của gỗ từ Angola, vui lòng truy cập:',
      'en': 'More information on Timber Legality Requirements from Angola at:',
    },
    '5qs4iw1f': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // DetailPage_DRC
  {
    '34zh4d8o': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'gh1w71rw': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '4igamvgi': {
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
    '7q23pfem': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'zrtj3kea': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'fufrbjg3': {
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
    '9vyshvl1': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'wj70uf7u': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'w4ftlu3k': {
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
    'l9hzf3bk': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    '3uw0i6te': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'krzvk80d': {
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
    '17xtq2zr': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'ys76lf6f': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'a3faq35h': {
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
    '1ueng80y': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    '3c0w68nu': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '063u27iz': {
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
  // DetailPage_Angola_2
  {
    'hsmn7bol': {
      'vi': 'Quay lại',
      'en': 'Back',
    },
    'b2u72b8r': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    'h8djnwzp': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    'bzjudybu': {
      'vi': 'Quy định gỗ hợp pháp của Angola',
      'en': 'Angola’s Timber legality requirements',
    },
    'bu6jlaof': {
      'vi':
          'Angola chưa tham gia đàm phán Hiệp định Đối tác Tự nguyện với Liên minh Châu Âu. Tuy nhiên, nước này có hệ thống pháp lý tương đối toàn diện, đảm bảo xác định, giảm thiểu rủi ro đối với các sản phẩm gỗ tuân thủ luật pháp quốc gia và giúp ngăn chặn việc nhập khẩu gỗ bất hợp pháp vào các quốc gia khác. Bằng cách nhận thức được các quy định pháp luật ở Angola được nêu rõ dưới đây, các cơ quan thực thi pháp luật và các nhà nhập khẩu có thể thực hiện các biện pháp kiểm soát và giảm thiểu rủi ro để ngăn chặn gỗ bị khai thác, vận chuyển và buôn bán bất hợp pháp từ Angola. Các nhà nhập khẩu và cơ quan xác minh có thể tham khảo hoặc sử dụng thông tin này trong việc thực hiện trách nhiệm giải trình.\n\n',
      'en':
          'Angola has not yet entered into negotiations for a Voluntary Partnership Agreement with the European Union. However, the country has a relatively comprehensive legal system that ensures identification and mitigation of risks for wood products in compliance with national laws and helping prevent the import of illegal timber into other countries. By being aware of the legal requirements in Angola highlighted below, law enforcement agencies and importers can implement control and risk mitigation measures to prevent timber being illegally harvested, transported and traded. Importers and verification agencies may refer to or use this definition in implementing due diligence.',
    },
    'pig9gglp': {
      'vi':
          'Gợi ý xây dựng và thực hiện trách nhiệm giải trình cho các nhà nhập khẩu',
      'en': 'TRADE & TRANSPORT',
    },
    'ixa56nwg': {
      'vi': 'Trách nhiệm giải trình là gì?',
      'en': 'Due diligence and complexity',
    },
    '82eqyorj': {
      'vi':
          '• Trách nhiệm giải trình là việc tổ chức, cá nhân tuân thủ các quy định pháp luật, chứng minh tính hợp pháp của gỗ và khả năng truy xuất nguồn gốc gỗ được mua bán.\n\n• Phạm vi của hệ thống trách nhiệm giải trình phụ thuộc vào số lượng và mức độ phức tạp của chuỗi cung ứng. Ví dụ: nhiều khâu trung gian và/ hoặc nhiều tổ chức, cá nhân tham gia chuỗi cung, nhiều loài gỗ và thành phần chủ gỗ\n',
      'en':
          '•\tDue diligence is the compliance of organizations and individuals with legal regulations in terms of tracking timber origin and proving the legality of traded timber products.\n\n•\tThe scope of a due diligence system depends on the number and the complexity of supply chains, e.g. multi-middleman and/or many organizations and individuals participating in the supply chain, many timber species and timber owners.\n',
    },
    '860716qh': {
      'vi': 'Phát triển hệ thống trách nhiệm giải trình',
      'en': 'Developing due diligence systems',
    },
    'okbmi2i4': {
      'vi':
          '• Phát triển một hệ thống với cam kết của lãnh đạo, các chính sách, quy trình, cơ cấu tổ chức, và mẫu biểu/ danh sách kiểm tra và những người chịu trách nhiệm chính.\n• Thu thập thông tin từ các chuỗi cung ứng.\n• Đánh giá các chuỗi cung ứng và đánh giá lỗ hổng/ rủi ro.\n• Thực hiện giảm thiểu rủi ro.\n• Lập và lưu trữ hồ sơ.\n',
      'en':
          '•\tDevelop a system with leadership commitment, policies, procedures, organizational structures, templates/checklists and key responsible persons.\n•\tGather information from supply chains.\n•\tEvaluate supply chains and gaps/risk assessments.\n•\tImplement risk mitigation\n•\tSet up and store documents. \n',
    },
    'wl7hvssa': {
      'vi': 'Thực hiện trách nhiệm giải trình',
      'en': 'Implementing due diligence',
    },
    'pcds7r43': {
      'vi':
          '• Đánh giá tính hợp lệ của tài liệu về thời hạn, hiệu lực và thẩm quyền.\n• Kiểm tra mỗi tài liệu đã được cập nhật, đã được ký/ đóng dấu bởi cơ quan đủ thẩm quyền.\n• Đối chiếu tính nhất quán, logic giữa tài liệu này với tài liệu khác được cung cấp và với các sản phẩm thực tế (loại gỗ, khối lượng, địa điểm khai thác, v.v.) đang được bán/ xuất khẩu.\n• Các biện pháp cần thiết: yêu cầu bổ sung thông tin từ nhà cung cấp; tiến hành tham vấn các bên liên quan; kiểm định gỗ; cử cán bộ nghiệm thu nguồn gỗ; và/ hoặc thuê các bên thứ ba để kiểm toán thực địa.\n',
      'en':
          '•\tEvaluate the validity of documentation in term of date, period and authorization.\n•\tCheck that each document is up to date, has been signed/stamped by the authorized agencies.\n•\tCross-check consistent and logical within itself, with other provided documents and with actual products (species, volume, location of harvest, etc.) being sold/exported. \n•\tThe necessary measures: require further information from suppliers; conduct stakeholder consultation; test timber; send staff to check timber sources; and/or hire third parties for on-site checks.\n',
    },
    'd74rasrj': {
      'vi':
          'Các tài liệu sau đây được chọn theo định nghĩa gỗ hợp pháp của Angola và/ hoặc các quy định pháp luật trong các giai đoạn khác nhau của chuỗi cung ứng.',
      'en':
          'The following documents are selected in accordance with Angola’s legal definition and/or legal requirements in different stages of the supply chain.',
    },
    'yhve91fz': {
      'vi': 'KHAI THÁC GỖ',
      'en': 'TRADE & TRANSPORT',
    },
    '7zpficv3': {
      'vi': 'Quyền khai thác',
      'en': 'Harvesting rights',
    },
    '3dgkq8hv': {
      'vi':
          '• Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)\nBằng chứng từ người có quyền khai thác các loại gỗ cụ thể, với khối lượng cho phép nhất định từ diện tích rừng xác định. Đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép quá cảnh. Cần kiểm tra kỹ tên chủ Giấy phép và tỉnh được chỉ định, và đảm bảo Giấy phép đã được ký và đóng dấu của Tổng Giám đốc Viện Phát triển Lâm nghiệp ((Instituto de Desenvolvimento Florestal - IDF).\n\n• Báo cáo đánh giá tác động môi trường\nBáo cáo đánh giá tác động môi trường đã được Bộ Môi trường và Bộ Nông Lâm nghiệp phê duyệt. Cần kiểm tra tên của chủ dự án, chữ ký và đóng dấu, thời gian có hiệu lực và hoạt động giảm thiểu theo kế hoạch.\n',
      'en':
          '•\tAnnual forest exploitation license (Licenca de Exploração florestal)   \nProvide verifier from the holder of the right to harvest specific timber species with a certain allowable volume from a defined forest area. Cross-check information with the Certificate of Origin and the Transit Permit. Carefully check the name of the License holder and the province specified, and ensure the License has been signed and stamped by the Director General of the Forestry Development Institute (Instituto de Desenvolvimento Florestal - IDF).\n\n• Environmental impact assessment report \nThe environmental impact assessment report has been approved by the Ministry of Environment and the Ministry of Agriculture and Forestry. Check project owner\'s name, signature and stamp, date is valid and planned mitigation action.\n',
    },
    'h8s12j37': {
      'vi':
          'Giấy phép khai thác rừng hàng năm (Licenca de Exploração florestal)',
      'en':
          'Annual forest exploitation license (Licenca de Exploração florestal) ',
    },
    'ttkmfpdf': {
      'vi': 'Đảm bảo quản lý và lập kế hoạch khai thác',
      'en': 'Assure harvesting management and planning ',
    },
    'sm05to25': {
      'vi':
          '• Kế hoạch quản lý rừng\nĐối với chủ hợp đồng nhượng quyền, Kế hoạch quản lý rừng chi tiết được IDF phê duyệt. Cần kiểm tra chữ ký, con dấu của đại diện IDF.\n\n• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm, phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập. Cần kiểm tra tên, địa chỉ chủ sở hữu nhượng quyền, địa điểm, diện tích khu vực nhượng quyền.\n\n• Kế hoạch khai thác \nCần đối chiếu các loài được khai thác, phương pháp khai thác, các loại sản phẩm hoặc sản phẩm tương đương trong khai thác.\n',
      'en':
          '• Forest management plan\nFor holder of concession contract, a detailed forest management plan is approved by the IDF. Check signature, seal of IDF’s representative.\n\n• Map of concession area\nFor annual forest exploitation license, a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). Check the concession owner\'s name, address, location and concession area.\n\n• Harvesting plan \nCross-check species harvested, methods of harvesting, types of products or equivalent products in the harvesting.\n',
    },
    'ycg9tr42': {
      'vi': 'Tham vấn cộng đồng địa phương và tuân thủ các quyền tập quán',
      'en':
          'Consultation with local communities and adherence to common law rights',
    },
    'uecsejs7': {
      'vi':
          '• Bản đồ khu vực nhượng quyền\nĐối với giấy phép khai thác rừng hàng năm: Phải có bản đồ khu vực nhượng quyền 1/ 100.000 do cơ quan địa phương của Viện Đo đạc và Bản đồ Angola (IGCA) lập.\n',
      'en':
          '• Map of concession area\nFor annual forest exploitation license: a map of the concession area of 1/100,000 is prepared by the local agency of the Institute of Geodesy and Cartography of Angola (Instituto Geodesía e Cartografia de Angola - IGCA). ',
    },
    'vm1y29sq': {
      'vi': 'VẬN TẢI VÀ THƯƠNG MẠI GỖ',
      'en': 'TRADE & TRANSPORT',
    },
    'xlhnl64l': {
      'vi':
          'Thực hiện tuân thủ đầy đủ các thủ tục vận chuyển và kiểm tra xuất khẩu gỗ',
      'en':
          'Implement full compliance with timber transport and export inspections',
    },
    'exbfd78n': {
      'vi':
          '• Giấy chứng nhận xuất xứ\nCần đối chiếu thông tin với Giấy phép khai thác rừng và Giấy phép quá cảnh, cần kiểm tra kỹ tỉnh xuất xứ, khối lượng và loài cây, Giấy chứng nhận xuất xứ phải được ký bởi Viện trưởng Viện Phát triển Lâm nghiệp cấp tỉnh cũng như nhân viên điểm kiểm tra hoặc nhân viên kho.',
      'en':
          '•\tCertificate of Origin \nCross-check with information on the Forest Exploitation License and Transit Permit, carefully check the province of origin and the volume and species of trees, and ensure the Certificate of Origin has been signed by the Provincial Head of the IDF as well as check point or warehouse personnel. ',
    },
    'tngw580s': {
      'vi': 'Giấy chứng nhận xuất xứ',
      'en': 'Certificate of Origin',
    },
    '374udp03': {
      'vi':
          '  \t• Giấy phép quá cảnh\nCần đối chiếu thông tin với Giấy chứng nhận xuất xứ và Giấy phép khai thác rừng, cần kiểm tra loài cây và khối lượng được quy định, và đảm bảo ngày còn hiệu lực và Giấy phép quá cảnh đã được ký bởi nhân viên kho và Viện trưởng Viện Phát triển Lâm nghiệp cấp tỉnh được đóng dấu của IDF.\n\n \t• Giấy phép xuất khẩu (Documento Único Provisório)\nCần đối chiếu với các tài liệu chuỗi cung ứng khác và đảm bảo Giấy phép đã được ký bởi Cục trưởng Cục Ngoại thương, Bộ Công Thương (Ministério da Indústria e Comércio). Cần kiểm tra chéo thông tin khối lượng sản phẩm, mô tả, phương tiện vận chuyển, chủng loại, giá trị hàng hóa của nhà xuất khẩu, nhà nhập khẩu trên giấy phép xuất khẩu với các tài liệu khác.',
      'en':
          '•\tTransit Permit \nCross-check with information on the Certificate of Origin and Forest Exploitation License, check the tree species and volumes specified, and ensure the date is valid and the Permit has been signed by warehouse personnel and signed and stamped by the Provincial Head of the IDF.\n\n•\tExport License (Documento Único Provisório)\nCross-check with other supply chain documents and ensure the License has been signed by the Director of External Trade, Ministry of Industry and Trade (Ministério da Indústria e Comércio). Cross-check information on product volume, description, means of transport, type and value of goods of exporters and importers on export License with other documents.',
    },
    'metwew3u': {
      'vi': 'Giấy phép xuất khẩu (Documento Único Provisório)',
      'en': '•\tExport License (Documento Único Provisório)',
    },
    'bfltjn12': {
      'vi':
          'Đảm bảo tuân thủ Công ước về buôn bán quốc tế các loài động, thực vật hoang dã nguy cấp (CITES)',
      'en':
          'Assure compliance with the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES)',
    },
    'lrhb9ust': {
      'vi':
          '• Giấy phép CITES\nGiấy phép CITES phải do Cơ quan quản lý CITES quốc gia của Bộ Môi trường cấp. Cần kiểm tra chữ ký và dấu của Cơ quan CITES, tên chữ ký người nộp đơn/ người xin giấy phép xuất khẩu, tên cảng xuất khẩu. ',
      'en':
          '• CITES Permit\nCITES permits are issued by the National CITES Management Authority of the Ministry of Environment. Check the signature and seal of the CITES Management Authority, the name of the applicant / applicant\'s signature for the export permit, the name of the port of export.',
    },
    'ha0ii5tu': {
      'vi': 'Giấy phép CITES',
      'en': 'CITES Permit',
    },
    '6b16i6k2': {
      'vi': 'CHẾ BIẾN GỖ',
      'en': 'PROCESSING',
    },
    'lrvro5jw': {
      'vi':
          'Đảm bảo tuân thủ quy định về đăng ký kinh doanh và môi trường của cơ sở chế biến gỗ',
      'en':
          'Assure compliance with regulations on business registration and the environment of wood processing establishments',
    },
    'n6dia3v5': {
      'vi':
          '• Giấy phép môi trường vận hành \nGiấy phép môi trường vận hành phải do Bộ trưởng Bộ Môi trường hoặc người được ủy quyền ký và đóng dấu của Bộ Môi trường. Cần kiểm tra tài liệu, chữ ký và con dấu, thời hạn hiệu lực, nơi phát hành của giấy phép. ',
      'en':
          '• Environmental Operating License (Licença Ambiental de Operação)  \nThe environmental operating license is signed by the Minister of Environment or an authorized person and stamped by the Ministry of Environment. Check the document, signature and seal, validity of date, place of issue of the license.',
    },
    '2i06ib89': {
      'vi': 'Giấy phép môi trường vận hành  (Licença Ambiental de Operação) ',
      'en': 'Environmental Operating License (Licença Ambiental de Operação) ',
    },
    '3uz1yz2m': {
      'vi':
          '• Giấy phép thương mại\nGiấy phép thương mại phải do Tổng cục trưởng Tổng cục Nội thương, Bộ Công thương ký và đóng dấu. Cần kiểm tra tài liệu, chữ ký và con dấu, thời hạn hiệu lực, nơi phát hành của giấy phép. ',
      'en':
          '• Commercial license\nThe commercial license is signed and stamped by the Director General of the General Department of Internal Trade, Ministry of Industry and Trade. Check the document, signature and seal, validity of date, place of issue of the license.',
    },
    'hu3cuh9o': {
      'vi':
          'Đảm bảo rằng các doanh nghiệp chế biến đã tuân thủ các quy định về an toàn và vệ sinh lao động',
      'en':
          'Assure that timber processing companies have complied with health and safety regulations',
    },
    '93tloirr': {
      'vi':
          '• Báo cáo Sở An toàn và Vệ sinh lao động\nNhà nhập khẩu có thể yêu cầu nhà xuất khẩu gỗ cung cấp báo cáo Sở an toàn và vệ sinh lao động đối với các công ty có từ 50 nhân viên trở lên.',
      'en':
          '•\tOccupational Health and Safety Services Reports \nImporters can request monthly, quarterly and annual reports for companies with 50 or more employees.',
    },
    'qorzf2y4': {
      'vi':
          'Đảm bảo tuân thủ các quy định về trả lương và đóng góp an sinh xã hội',
      'en':
          'Assure compliance with regulations on paid the wage and made social security contributions',
    },
    'etje2lhh': {
      'vi':
          '• Thư thông báo an sinh xã hội\nThư thông báo an sinh xã hội phải do Bộ Công chính – Lao động và An sinh xã hội (Ministério da Aministração Pública, Emprego y Segurança Social - MAPESS) ấn hành. Cần kiểm tra số lượng công nhân có thu nhập so với đóng góp an sinh xã hội, xác minh tại chỗ hồ sơ thanh toán phù hợp với Thư thông báo.',
      'en':
          '• The social security award letter \nThe social security award letter is published by the Ministry of Public Administration, Employment and Social Security (Ministério da Aministração Pública, Emprego y Segurança Social - MAPESS). Check the number of workers with income compared to social security contributions, verify on-site payment records in accordance with the award letter. ',
    },
    'j3r3w0uj': {
      'vi': 'CÁC VẤN ĐỀ XUYÊN SUỐT',
      'en': 'CROSS-CUTTING ISSUES',
    },
    'dg6ox3y1': {
      'vi': 'Tuân thủ các quy định về lao động',
      'en': 'Compliance with labor regulations',
    },
    'xidzxl6d': {
      'vi':
          '• Hợp đồng lao động \nHợp đồng lao động được áp dụng cho một số loại công việc nhất định. Xác minh tại chỗ người lao động có hợp đồng lao động phù hợp lĩnh vực cho phép.\n\n• Thư thông báo an sinh xã hội\nThư thông báo an sinh xã hội do MAPESS ấn hành.\n\n• Báo cáo Sở An toàn và Vệ sinh lao động\nNhà nhập khẩu có thể yêu cầu nhà xuất khẩu gỗ cung cấp báo cáo Sở an toàn và vệ sinh lao động đối với các công ty có từ 50 nhân viên trở lên.',
      'en':
          '• Labor contract\nLabor contract is applicable to certain types of work. Verify on-site the employee has a suitable labor contract in the sector.\n\n\t• The award letter social security\nThe award letter social security is published by the MAPESS.\n\n• Occupational Health and Safety Services Reports \nImporters can request Occupational Health and Safety Services Reports for companies with 50 or more employees.',
    },
    'fyneiszt': {
      'vi':
          'Để biết thêm thông tin về Quy định pháp luật của gỗ từ Angola, vui lòng truy cập:',
      'en': 'More information on Timber Legality Requirements from Angola at:',
    },
    'c9ydhwb3': {
      'vi': 'Đất nước',
      'en': 'Coutries',
    },
  },
  // ListAll_1
  {
    'cbwh8umz': {
      'vi': 'Tìm nước...',
      'en': 'Search for coutries...',
    },
    '9uiavfdt': {
      'vi': 'Tìm nước...',
      'en': '',
    },
    '6unv9gfb': {
      'vi': 'Ăng gô la',
      'en': 'Angola',
    },
    'es6ixho5': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'mosjaj95': {
      'vi': 'Cam pu chia',
      'en': 'Cambodia',
    },
    '48em1vj0': {
      'vi': 'Châu Á',
      'en': 'Asia',
    },
    '3banglgy': {
      'vi': 'Ca mơ run',
      'en': 'Cameroon',
    },
    'le7z1f8e': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'pr6ewkwg': {
      'vi': 'CH Công gô',
      'en': 'Congo',
    },
    '90uqiczz': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'tohw492e': {
      'vi': 'CHDC Công gô',
      'en': 'DRC',
    },
    'u0xyq4tj': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    '2zdxwkrw': {
      'vi': 'Ga-bông         ',
      'en': 'Gabon',
    },
    'xka8bsef': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'xfwxe75a': {
      'vi': 'Gha-na         ',
      'en': 'Ghana',
    },
    'j6wwvc9a': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    '7y93a8hc': {
      'vi': 'Guinée     ',
      'en': 'Guinea',
    },
    'jtkz7flb': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'cc2t2uwz': {
      'vi': 'Lào            ',
      'en': 'Laos',
    },
    'isz6wb4w': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    'psn1urw7': {
      'vi': 'Nigeria      ',
      'en': 'Nigeria',
    },
    'nqc421o5': {
      'vi': 'Châu Phi',
      'en': 'Africa',
    },
    '9t7pn54a': {
      'vi': 'Danh sách',
      'en': 'List',
    },
  },
  // WelcomeHome_1
  {
    'c4tjlahe': {
      'vi': 'Thực thi các Hệ thống  bảo đảm tính hợp pháp của gỗ',
      'en': 'Implementing Timber Legality Assurance Systems',
    },
    '0vnt09lc': {
      'vi':
          'Hướng dẫn tuân thủ các yêu cầu về tính hợp pháp của gỗ xuất xứ từ các nước xuất khẩu gỗ quan trọng và hỗ trợ trách nhiệm giải trình',
      'en':
          'A guide to comply with timber legality requirements in key timber exporting countries to support due diligence',
    },
    'i0ikd8js': {
      'vi': 'Thông tin Bản quyền\n---',
      'en': 'Credit \n---',
    },
    'cxp8g7qz': {
      'vi': '',
      'en': '',
    },
    '3xx8iwjb': {
      'vi':
          'Bản quyền của phần mềm này thuộc về Tổ chức Hợp tác phát triển Đức GIZ. Phần mềm được xây dựng trong khuôn khổ Dự án “Hỗ trợ quá trình thực hiện VPA/FLEGT tại Việt Nam – Hướng tới chuỗi cung ứng gỗ hợp pháp giữa các nước VPA”.\n\nDự án được uỷ thác bởi Bộ Hợp tác và Phát triển Kinh tế CHLB Đức (BMZ) và đồng tài trợ bởi Bộ Ngoại giao và Phát triển Vương quốc Anh (FCDO). Tổ chức Hợp tác phát triển Đức GIZ phối hơp cùng Tổng cục Lâm nghiệp (VNFOREST) thực hiện Dự án tại Việt Nam. \n',
      'en':
          'The copyright of this mobile app belongs to the Deutsche Gesellschaft für Internationale Zusammenarbeit (GIZ) GmbH. It is developed within the scope of the project “Support to the VPA process in Viet Nam – Toward the legal timber supply chains between VPA countries”. \n\nThe Project is commissioned by the Federal Ministry of Economic Cooperation and Development (BMZ) of Germany and co-funded by the Foreign, Commonwealth and Development Office (FCDO) of the United Kingdom. The Deutsche Gesellschaft für Internationale Zusammenarbeit (GIZ) collaborates with the Viet Nam Administration of Forest (VNFOREST) to implement the Project in Viet Nam. ',
    },
    '3890kjkt': {
      'vi': 'TUYÊN BỐ MIỄN TRỪ TRÁCH NHIỆM\n---',
      'en': 'DISCLAIMER\n---',
    },
    'kta4xcmg': {
      'vi': '',
      'en': '',
    },
    'i2d2dtib': {
      'vi':
          'Các thông tin trong phần mềm này chỉ có giá trị tham khảo và không đại diện cho quan điểm của BMZ, FCDO, GIZ và Tổng cục Lâm nghiệp.\n\nBMZ, FCDO, GIZ và Tổng cục Lâm nghiệp từ chối chịu trách nhiệm pháp lý đối với việc sử dụng phần mềm và các thông tin được cung cấp trong phần mềm bởi các cá nhân và tổ chức khác, cũng như bất kỳ tổn thất nào là kết quả của hành động đó.',
      'en':
          'The information disclosed in this mobile app is for reference purpose only and does not necessarily reflect those of BMZ, FCDO, GIZ and VNFOREST. \n\nBMZ, FCDO, GIZ and VNFOREST decline to take legal responsibility for the use of this document and the inside information by any other parties, as well as any losses resulted from that action. ',
    },
    'n35ofwiu': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // Contact
  {
    'zw2t1p45': {
      'vi': 'Liên hệ',
      'en': 'Contact',
    },
    'ltbbpd02': {
      'vi': 'Thư điện tử',
      'en': 'Email to',
    },
    'q2m5yfs1': {
      'vi': 'anh.luong@giz.de',
      'en': 'anh.luong@giz.de',
    },
    'srf6x6fw': {
      'vi': 'Facebook',
      'en': 'Facebook',
    },
    '1d3armow': {
      'vi': 'https://www.facebook.com/GIZinVIETNAM ',
      'en': 'https://www.facebook.com/GIZinVIETNAM ',
    },
    'nc7dgyqt': {
      'vi': 'Nhà phát triển',
      'en': 'Developer',
    },
    'hmrz2gbt': {
      'vi':
          'Công Ty TNHH Tư Vấn, Phát Triển Công Nghệ Và Trí Tuệ Nhân Tạo AITC',
      'en':
          'AITC Artificial Intelligence and Technology Development, Consulting Company Limited',
    },
    'omrlhf48': {
      'vi': 'Email: aitc.tech.vn@gmail.com',
      'en': 'Email: aitc.tech.vn@gmail.com',
    },
    'kqa2ie84': {
      'vi': 'Liên hệ',
      'en': 'Contact',
    },
  },
].reduce((a, b) => a..addAll(b));
