import 'package:flutter/material.dart';

customIconButton(
    {required IconData buttonIcon,
    required Color buttonColor,
    required Function() ontap}) {
  return Column(
    children: [
      IconButton(
        icon: Icon(buttonIcon),
        iconSize: 40,
        color: buttonColor,
        splashColor: Colors.grey,
        onPressed: () {
          ontap();
        },
      ),
    ],
  );
}

customTextButton(
    {required String textTitle,
    // required Function() functionForSnackBar,
    required BuildContext context,
    required String snackBarText}) {
  return Row(
    children: [
      TextButton(
          onPressed: () {
            customSnackBar(context, snackBarText);
          },
          child: Text(textTitle)),
    ],
  );
}

customSnackBar(BuildContext context, String snackBarText) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(snackBarText),
    duration: Duration(seconds: 2),
  ));
}
