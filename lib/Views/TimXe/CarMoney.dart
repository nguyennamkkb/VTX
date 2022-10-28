import 'package:flutter/material.dart';
import 'package:vtaxi/Views/Home/CarOption.dart';

class CarMoney extends StatelessWidget {
  const CarMoney({Key? key,required this.name, required this.money, required this.icon}) : super(key: key);

  final String money;
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CarOption(name: name,icon: icon,),
            const SizedBox(height: 8,),
            Text(money)
          ],
        )
      ],
    );
  }
}
