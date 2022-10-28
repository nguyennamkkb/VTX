import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vtaxi/constants/constantIcon.dart';

class CarOption extends StatelessWidget {
  const CarOption({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);
  final String name;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SvgPicture.asset(icon), Text(name)],
    );
  }
}