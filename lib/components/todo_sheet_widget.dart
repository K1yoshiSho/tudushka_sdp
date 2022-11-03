import '../custom/custom_theme.dart';
import '../custom/custom_widgets.dart';
import 'package:flutter/material.dart';

class TodoSheetWidget extends StatefulWidget {
  const TodoSheetWidget({Key? key}) : super(key: key);

  @override
  _TodoSheetWidgetState createState() => _TodoSheetWidgetState();
}

class _TodoSheetWidgetState extends State<TodoSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: CustomTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                  color: CustomTheme.of(context).lineColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Категории',
                    options: CustomButtonOptions(
                      width: 130,
                      height: 40,
                      color: CustomTheme.of(context).primaryBackground,
                      textStyle: CustomTheme.of(context).subtitle2.override(
                            fontFamily: 'Nunito',
                            color: CustomTheme.of(context).primaryColor,
                            useGoogleFonts: false,
                          ),
                      borderSide: BorderSide(
                        color: CustomTheme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  CustomWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Выполненные задачи',
                    options: CustomButtonOptions(
                      width: 180,
                      height: 40,
                      color: CustomTheme.of(context).primaryColor,
                      textStyle: CustomTheme.of(context).subtitle2.override(
                            fontFamily: 'Nunito',
                            color: Colors.white,
                            useGoogleFonts: false,
                          ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(16),
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
