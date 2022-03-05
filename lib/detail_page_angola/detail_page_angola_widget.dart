import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class DetailPageAngolaWidget extends StatefulWidget {
  const DetailPageAngolaWidget({Key key}) : super(key: key);

  @override
  _DetailPageAngolaWidgetState createState() => _DetailPageAngolaWidgetState();
}

class _DetailPageAngolaWidgetState extends State<DetailPageAngolaWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/appbar_background.jpg',
                        ).image,
                      ),
                      border: Border.all(
                        color: Color(0xFFDBE2E7),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 8, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          Navigator.pop(context);
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'bg6diwlu' /* Quay lại */,
                                        ),
                                        icon: Icon(
                                          Icons.arrow_back,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 35,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFF1F8E9),
                                                  ),
                                          borderSide: BorderSide(
                                            color: Color(0xFFF1F8E9),
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    setAppLanguage(context, 'en');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/images/en.png',
                                      width: 40,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      setAppLanguage(context, 'vi');
                                    },
                                    child: Image.asset(
                                      'assets/images/vi.png',
                                      width: 40,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 4, 0),
                                      child: Icon(
                                        Icons.search_rounded,
                                        color: Color(0xFF95A1AC),
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: TextFormField(
                                          controller: textController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'p7lmwouw' /* Tìm nước... */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF82878C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '9vntihoq' /* Tìm nước... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x004B39EF),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x004B39EF),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF151B1E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: AutoSizeText(
                              FFLocalizations.of(context).getText(
                                '90al7d9s' /* Quy định gỗ hợp pháp của Angol... */,
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Text(
                              '',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x8A000000),
                                  ),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    '8ifm7qdu' /* Angola chưa tham gia đàm phán ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'eqwym9ws' /* Gợi ý xây dựng và thực hiện tr... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vwxbllk4' /*  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 2),
                                          child: Container(
                                            width: double.infinity,
                                            color: Color(0xFFF1F8E9),
                                            child: ExpandableNotifier(
                                              initialExpanded: false,
                                              child: ExpandablePanel(
                                                header: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5j4bcnbp' /* Trách nhiệm giải trình là gì? */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                                collapsed: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                  ),
                                                  child: Text(
                                                    '',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                        ),
                                                  ),
                                                ),
                                                expanded: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 0, 2, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0a1ftc67' /* • Trách nhiệm giải trình là vi... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0x8A000000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  hasIcon: true,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 2),
                                      child: Container(
                                        width: double.infinity,
                                        color: Color(0xFFF1F8E9),
                                        child: ExpandableNotifier(
                                          initialExpanded: false,
                                          child: ExpandablePanel(
                                            header: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'k7tp3zec' /* Phát triển hệ thống trách nhiệ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                        ),
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Text(
                                                '',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                        ),
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0ypmuac1' /* • Phát triển một hệ thống với ... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Color(0xFFF1F8E9),
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '343xn4ng' /* Thực hiện trách nhiệm giải trì... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'lhfqzols' /* • Đánh giá tính hợp lệ của tài... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 0),
                      child: AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'kc3qwg3p' /* Các tài liệu sau đây được chọn... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0, 0.6000000000000001),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '32xiwx12' /* KHAI THÁC GỖ */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '8pc31klh' /*  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                    ),
                              ),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                        child: Container(
                                          width: double.infinity,
                                          color: Color(0xFFF1F8E9),
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ofr2dg1g' /* Quyền khai thác */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Text(
                                                  '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                      ),
                                                ),
                                              ),
                                              expanded: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xebmj874' /* • Giấy phép khai thác rừng hàn... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x8A000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4guf86ys' /* Giấy phép khai thác rừng hàng ... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                  InkWell(
                                                    onDoubleTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image: Image.asset(
                                                              'assets/images/mcatd_1.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: 'imageTag1',
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'imageTag1',
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: Image.asset(
                                                        'assets/images/mcatd_1.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Container(
                                      width: double.infinity,
                                      color: Color(0xFFF1F8E9),
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xxxic2yw' /* Đảm bảo quản lý và lập kế hoạc... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            child: Text(
                                              '',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                      ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8d3khsrw' /* • Kế hoạch quản lý rừng
Đối vớ... */
                                                  ,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xFFF1F8E9),
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '30nz7iuv' /* Tham vấn cộng đồng địa phương ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'xv62v5yu' /* • Bản đồ khu vực nhượng quyền
... */
                                              ,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0, 0.6000000000000001),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'vtktrd52' /* VẬN TẢI VÀ THƯƠNG MẠI GỖ */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ogf8bt1f' /*  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                    ),
                              ),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Container(
                                      width: double.infinity,
                                      color: Color(0xFFF1F8E9),
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pb568nnr' /* Thực hiện tuân thủ đầy đủ các ... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            child: Text(
                                              '',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                      ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(2, 0, 2, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6tpf6bwx' /* • Giấy chứng nhận xuất xứ
Cần ... */
                                                    ,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2ui6xz6m' /* Giấy chứng nhận xuất xứ */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: Image.asset(
                                                          'assets/images/Angola_3.png',
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag: 'imageTag2',
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: 'imageTag2',
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: Image.asset(
                                                    'assets/images/Angola_3.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(2, 0, 2, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2g25vbp7' /*   	• Giấy phép quá cảnh
Cần đố... */
                                                    ,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hyzaw4i0' /* Giấy phép xuất khẩu (Documento... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: Image.asset(
                                                          'assets/images/Angola_2.png',
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag: 'imageTag3',
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: 'imageTag3',
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: Image.asset(
                                                    'assets/images/Angola_2.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xFFF1F8E9),
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'jzjylnf3' /* Đảm bảo tuân thủ Công ước về b... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 0, 2, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0vsib61k' /* • Giấy phép CITES
Giấy phép CI... */
                                                ,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'acjuuej9' /* Giấy phép CITES */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                          InkWell(
                                            onDoubleTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.asset(
                                                      'assets/images/Angola_5.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: 'imageTag4',
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'imageTag4',
                                              transitionOnUserGestures: true,
                                              child: Image.asset(
                                                'assets/images/Angola_5.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onDoubleTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.asset(
                                                      'assets/images/Angola_6.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: 'imageTag5',
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'imageTag5',
                                              transitionOnUserGestures: true,
                                              child: Image.asset(
                                                'assets/images/Angola_6.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0, 0.6000000000000001),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'no7zu197' /* CHẾ BIẾN GỖ */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'pvr514j2' /*  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                    ),
                              ),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                        child: Container(
                                          width: double.infinity,
                                          color: Color(0xFFF1F8E9),
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3rj19lgo' /* Đảm bảo tuân thủ quy định về đ... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Text(
                                                  '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                      ),
                                                ),
                                              ),
                                              expanded: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: AutoSizeText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2vj16jsb' /* • Giấy phép môi trường vận hàn... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x8A000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2lejgy0p' /* Giấy phép môi trường vận hành ... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                  InkWell(
                                                    onDoubleTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image: Image.asset(
                                                              'assets/images/Angola_4.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: 'imageTag6',
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'imageTag6',
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: Image.asset(
                                                        'assets/images/Angola_4.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '642rw7pg' /* • Giấy phép thương mại
Giấy ph... */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x8A000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Container(
                                      width: double.infinity,
                                      color: Color(0xFFF1F8E9),
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jyf4i2zs' /* Đảm bảo rằng các doanh nghiệp ... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            child: Text(
                                              '',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                      ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(2, 0, 2, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '73hbk5c0' /* • Báo cáo Sở An toàn và Vệ sin... */,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xFFF1F8E9),
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'xcibtvul' /* Đảm bảo tuân thủ các quy định ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 0, 2, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'p6n6uspg' /* • Thư thông báo an sinh xã hội... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0, 0.6000000000000001),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ahzvrhl7' /* CÁC VẤN ĐỀ XUYÊN SUỐT */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '16225s1f' /*  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                    ),
                              ),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xFFF1F8E9),
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'nhsux2lr' /* Tuân thủ các quy định về lao đ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 0, 2, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ncy0904q' /* • Hợp đồng lao động 
Hợp đồng ... */
                                                ,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 1),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0.6000000000000001),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'h21s0yzn' /* Để biết thêm thông tin về Quy ... */,
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                    ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://preferredbynature.org/projects/developing-background-analyses-voluntary-partnership-agreement-vpa-support-project');
                            },
                            child: Html(
                              data:
                                  '<a href=\"url\">https://preferredbynature.org/projects/developing-background-analyses-voluntary-partnership-agreement-vpa-support-project</a>',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Html(
                              data:
                                  '<a href=\"url\">https://timberlex.apps.fao.org/</a>',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
