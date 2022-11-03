import '../auth/email_auth.dart';
import '../backend/backend.dart';
import '../custom/custom_theme.dart';
import '../custom/custom_util.dart';
import '../custom/custom_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController? emailAddressController;
  TextEditingController? nameController;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  TextEditingController? rePasswordController;
  late bool rePasswordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    rePasswordController = TextEditingController();
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    nameController?.dispose();
    passwordController?.dispose();
    rePasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Tudushka.svg',
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Тудушка',
                                style: CustomTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color:
                                          CustomTheme.of(context).primaryColor,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w800,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Добро пожаловать!',
                    style: CustomTheme.of(context).title1.override(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'Заполните приведенную ниже форму чтобы создать аккаунт.',
                      style: CustomTheme.of(context).bodyText2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    CustomTheme.of(context).secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x11000000),
                                    offset: Offset(0, 0),
                                    spreadRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: TextFormField(
                                controller: emailAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'E-mail адрес',
                                  hintText: 'Введите e-mail здесь',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          CustomTheme.of(context).googleButton,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          CustomTheme.of(context).googleButton,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  filled: true,
                                  fillColor:
                                      CustomTheme.of(context).primaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          24, 24, 0, 24),
                                  prefixIcon: Icon(
                                    Icons.alternate_email_rounded,
                                    color: CustomTheme.of(context).textFIcon,
                                  ),
                                ),
                                style:
                                    CustomTheme.of(context).bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  CustomTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x11000000),
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: TextFormField(
                              controller: nameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'ФИО',
                                hintText: 'Введите ФИО здесь',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    CustomTheme.of(context).primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.person_rounded,
                                  color: CustomTheme.of(context).textFIcon,
                                  size: 24,
                                ),
                              ),
                              style: CustomTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  CustomTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x11000000),
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Пароль',
                                hintText: 'Введите пароль здесь',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    CustomTheme.of(context).primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: CustomTheme.of(context).textFIcon,
                                  size: 20,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: CustomTheme.of(context).textFIcon,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: CustomTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  CustomTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x11000000),
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: TextFormField(
                              controller: rePasswordController,
                              obscureText: !rePasswordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Пароль',
                                hintText: 'Введите пароль еще раз',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.of(context).googleButton,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    CustomTheme.of(context).primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: CustomTheme.of(context).textFIcon,
                                  size: 20,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => rePasswordVisibility =
                                        !rePasswordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    rePasswordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: CustomTheme.of(context).textFIcon,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: CustomTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomWidget(
                          onPressed: () async {
                            if (passwordController?.text !=
                                rePasswordController?.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Пароли не совпадают!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailAddressController!.text,
                              passwordController!.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final userCreateData = createUserRecordData(
                              createdTime: getCurrentTimestamp,
                              displayName: nameController!.text,
                            );
                            await UserRecord.collection
                                .doc(user.uid)
                                .update(userCreateData);

                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'home'),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Зарегистрироваться',
                          options: CustomButtonOptions(
                            width: 250,
                            height: 50,
                            color: CustomTheme.of(context).primaryColor,
                            textStyle:
                                CustomTheme.of(context).subtitle1.override(
                                      fontFamily: 'Nunito',
                                      color: Colors.white,
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'У вас уже есть аккаунт?',
                          style: CustomTheme.of(context).bodyText1.override(
                                fontFamily: 'Nunito',
                                color: CustomTheme.of(context).secondaryText,
                                fontSize: 16,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: LoginWidget(),
                              ),
                            );
                          },
                          text: 'Войти',
                          options: CustomButtonOptions(
                            width: 160,
                            height: 40,
                            color: CustomTheme.of(context).primaryBackground,
                            textStyle: CustomTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Nunito',
                                  color: CustomTheme.of(context).primaryColor,
                                  useGoogleFonts: false,
                                ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: CustomTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
