import 'package:flutter/material.dart';
import 'package:sos_call/models/call_list.dart';
import 'package:sos_call/views/detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<CallList> foodListInfo = [
    CallList(
      name: 'เหตุด่วนเหตุร้าย',
      mobile: '191',
      image: 'img1.png',
    ),
    CallList(
      name: 'ตำรวจท่องเที่ยว',
      mobile: '1155',
      image: 'img2.png',
    ),
    CallList(
      name: 'แจ้งเหตุฉุกเฉิน/กู้ชีพ/กู้ภัย',
      mobile: '1356',
      image: 'img3.png',
    ),
    CallList(
      name: 'กรมสุขภาพจิต',
      mobile: '1323',
      image: 'img4.png',
    ),
    CallList(
      name: 'เจ็บป่วยฉุกเฉิน',
      mobile: '1669',
      image: 'img5.jpg',
    ),
    CallList(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      mobile: '1129',
      image: 'img6.png',
    ),
    CallList(
      name: 'การปะปาส่วนภูมิภาค',
      mobile: '1662',
      image: 'img7.png',
    ),
    CallList(
      name: 'กองปราบปราม',
      mobile: '1195',
      image: 'img8.png',
    ),
    CallList(
      name: 'แจ้งอัคคีภัย สัตว์เข้าบ้าน',
      mobile: '199',
      image: 'img9.jpg',
    ),
    CallList(
      name: 'ตำรวจน้ำ',
      mobile: '1196',
      image: 'img10.png',
    ),
    CallList(
      name: 'ศูนย์ความปลอดภัย กรมทางหลวงชนบท',
      mobile: '1146',
      image: 'img11.jpg',
    ),
    CallList(
      name: 'ศูนย์ปราบปรามการโจรกรรมรถยนต์ รถจักรยานยนต์',
      mobile: '1192',
      image: 'img12.png',
    ),
    CallList(
      name: 'กองอำนวยการรักษาความมั่นคงภายในราชอาณาจักร',
      mobile: '1374',
      image: 'img13.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วน',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.green[800],
                  );
                },
                itemCount: foodListInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: foodListInfo[index].name!,
                            mobile: foodListInfo[index].mobile!,
                            image: foodListInfo[index].image!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + foodListInfo[index].image!,
                    ),
                    title: Text(
                      foodListInfo[index].name!,
                    ),
                    subtitle: Text(
                      foodListInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
