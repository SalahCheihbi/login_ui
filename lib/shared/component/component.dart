import 'package:flutter/material.dart';

class CustomClippers extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0010250, 0);
    path0.lineTo(0, size.height * 0.5613500);
    path0.lineTo(size.width * 0.2589000, size.height * 0.5455000);
    path0.quadraticBezierTo(size.width * 0.4359000, size.height * 0.5250125,
        size.width * 0.4940000, size.height * 0.5170000);
    path0.quadraticBezierTo(size.width * 0.5550750, size.height * 0.5090625,
        size.width * 0.6662000, size.height * 0.4834625);
    path0.lineTo(size.width * 0.8714500, size.height * 0.4354125);
    path0.lineTo(size.width, size.height * 0.3908875);
    path0.lineTo(size.width, 0);
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget defaultFromField({
  FocusNode? focusNode,
  Color? colors,
  required IconData prefix,
  required String label,
  bool isPassword = false,
  TextInputType? type,
  bool? autofocus,
  Function()? function,
}) =>
    SizedBox(
      height: 40,
      width: double.infinity,
      child: TextFormField(
        onTap: function,
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        autofocus: autofocus!,
        keyboardType: type,
        obscureText: isPassword,
        decoration: InputDecoration(
            hintStyle: TextStyle(
              color: colors,
              fontSize: 15,
            ),
            hintText: label,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                prefix,
                size: 25,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.only(
              left: 20,
            )),
      ),
    );

Widget defaultButton({
  Color? background,
  double width = double.infinity,
  required Function()? function,
  required String text,
}) =>
    Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(80),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: function,
        color: background,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultInputForm({
  FocusNode? focusNode,
  required TextInputType type,
  bool autofocus = false,
}) =>
    SizedBox(
      height: 40,
      child: TextFormField(
        autofocus: autofocus,
        focusNode: focusNode,
        keyboardType: type,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: const EdgeInsets.all(
            10,
          ),
        ),
      ),
    );
