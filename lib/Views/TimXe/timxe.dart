import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vtaxi/Views/TimXe/CarMoney.dart';
import 'package:vtaxi/Views/TimXe/XacNhanDat.dart';
import 'package:vtaxi/constants/constantIcon.dart';
import 'package:vtaxi/constants/constantimages.dart';

class TimXe extends StatelessWidget {
  const TimXe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(

          child: Stack(

            children: [
              SizedBox(
                width: sizeScreen.width,
                height: sizeScreen.height,
              ),
              Container(width: sizeScreen.width, child: Image.asset(ImageMap1)),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                    color: Colors.white
                  ),

                  width: sizeScreen.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              child: CarMoney(
                            name: "Xe 4 chỗ",
                            money: "45K",
                            icon: iconTaxi4,
                          )),
                          Container(
                              child: CarMoney(
                            name: "Xe Taxi",
                            money: "45K",
                            icon: iconTaxi,
                          )),
                          Container(
                              child: CarMoney(
                            name: "Xe 7 chỗ",
                            money: "45K",
                            icon: iconTaxi7,
                          )),
                          Container(
                              child: CarMoney(
                            name: "Xe Máy",
                            money: "45K",
                            icon: iconBike,
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,

                      ),
                      MoneyDistant(sizeScreen: sizeScreen),
                      const SizedBox(height: 15,),
                      ListPay(sizeScreen: sizeScreen),
                      const SizedBox(height: 15,),
                      BtnDatXe(sizeScreen: sizeScreen),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class ListPay extends StatelessWidget {
  const ListPay({
    Key? key,
    required this.sizeScreen,
  }) : super(key: key);

  final Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width * 0.9,
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget> [
          Container(
            width: sizeScreen.width * 0.31,
            child: OutlinedButton.icon(
              label: Text('Tiền mặt'),
              icon: SvgPicture.asset(iconMoney),
              onPressed: () {
                print('Pressed');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(2),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            child: OutlinedButton.icon(
              label: Text('QR'),
              icon: SvgPicture.asset(iconQRVN),
              onPressed: () {
                print('Pressed');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(2),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            width: sizeScreen.width * 0.32,
            child: OutlinedButton.icon(
              label: Text('Thẻ đa năng'),
              icon: SvgPicture.asset(iconTDN),
              onPressed: () {
                print('Pressed');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(2),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            width: sizeScreen.width * 0.32,
            child: OutlinedButton.icon(
              label: Text('Vi Vimass'),
              icon: SvgPicture.asset(iconTDN),
              onPressed: () {
                print('Pressed');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BtnDatXe extends StatelessWidget {
  const BtnDatXe({
    Key? key,
    required this.sizeScreen,
  }) : super(key: key);

  final Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width * 0.9,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const XacNhanDat()),
          );


        },
        child: Text("Dat xe"),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
      ),
    );
  }
}

class MoneyDistant extends StatelessWidget {
  const MoneyDistant({
    Key? key,
    required this.sizeScreen,
  }) : super(key: key);

  final Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  iconDistance,
                  width: 30,
                ),
                Text("3.6 Km")
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("15 Phut"),
                SvgPicture.asset(
                  iconTime,
                  width: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
