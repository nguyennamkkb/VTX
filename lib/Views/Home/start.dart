import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vtaxi/Views/Home/CarOption.dart';
import 'package:vtaxi/Views/TimXe/timxe.dart';
import 'package:vtaxi/constants/constantIcon.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(logoVTaxi),
              ],
            ),
            Text(
              "Ứng dụng gọi xe công nghệ",
              style:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 14, height: 1.3),
            ),
            const SizedBox(
              height: 50,
            ),
            // ListCarSelect(),
            InputFrom(sizeScreen: sizeScreen),
            InputTo(sizeScreen: sizeScreen),
            // const SizedBox(
            //   height: 30,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       width: 100,
            //       height: 45,
            //       decoration: BoxDecoration(
            //         border: Border.all(width: 1.1),
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           "Nhà",
            //           style: TextStyle(color: Color(0xFF282F39)),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: 100,
            //       height: 45,
            //       decoration: BoxDecoration(
            //         border: Border.all(width: 1.1),
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           "Cơ quan",
            //           style: TextStyle(color: Color(0xFF282F39)),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: 100,
            //       height: 45,
            //       decoration: BoxDecoration(
            //         border: Border.all(width: 1.1),
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           "+ Thêm",
            //           style: TextStyle(color: Color(0xFF282F39)),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: sizeScreen.width * 0.9,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TimXe()),
                  );

                },
                child: Text("Tìm xe"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              width: 232,
              child: Text(
                "Sản phẩm hợp tác giữa 3 bên \n" +
                    "Công ty cổ phần dịch nền di động Việt Nam \n" +
                    "Công ty cổ phần QR Vietnam \n" +
                    "Hợp tác xã vận tải VTaxi",
                style: TextStyle(
                  fontSize: 12
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class InputTo extends StatelessWidget {
  const InputTo({
    Key? key,
    required this.sizeScreen,
  }) : super(key: key);

  final Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width * 0.85,
      child: Stack(children: [
        TextFormField(
          decoration: InputDecoration(
            icon: SvgPicture.asset(iconLocation),
            labelText: 'Nhập điểm đến',
          ),
          onSaved: (String? value) {
            // This optional block of code can be used to run
            // code when the user saves the form.
          },
          validator: (String? value) {
            return (value != null && value.contains('@'))
                ? 'Do not use the @ char.'
                : null;
          },
        ),
        Positioned(
          top: 15,
          right: 0,
          child: SizedBox(
            width: 45,
            child: TextButton(onPressed: () {}, child: SvgPicture.asset(iconX)),
          ),
        )
      ]),
    );
  }
}

class InputFrom extends StatelessWidget {
  const InputFrom({
    Key? key,
    required this.sizeScreen,
  }) : super(key: key);

  final Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width * 0.85,
      child: Stack(children: [
        TextFormField(
          decoration: InputDecoration(
            icon: SvgPicture.asset(iconPersionFrom),
            labelText: 'Nhập điểm đi',
          ),
          onSaved: (String? value) {
            // This optional block of code can be used to run
            // code when the user saves the form.
          },
          validator: (String? value) {
            return (value != null && value.contains('@'))
                ? 'Do not use the @ char.'
                : null;
          },
        ),
        Positioned(
          top: 15,
          right: 0,
          child: SizedBox(
            width: 45,
            child: TextButton(onPressed: () {}, child: SvgPicture.asset(iconX)),
          ),
        )
      ]),
    );
  }
}

class ListCarSelect extends StatelessWidget {
  const ListCarSelect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CarOption(name: "Xe 4 chỗ",icon: iconTaxi4,),
        CarOption(name: "Taxi",icon: iconTaxi,),
        CarOption(name: "Xe 7 chỗ",icon: iconTaxi7,),
        CarOption(name: "Xe máy",icon: iconBike,),

      ],
    );
  }
}


