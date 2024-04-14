import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';

class Account_Page extends StatelessWidget {
  const Account_Page({super.key});
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: InkWell(
              onTap: () {},
              child: Image.asset(
                "images/chk.png",
                height: 100,
                width: double.infinity / 200,
              )),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/saif.JPG"),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  child: Text(
                    "Saif Ibrahim",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 0, 14, 94)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.edit_sharp),
                      Text(
                        "   Edit profile",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 14, 94)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.price_check_outlined),
                      Text(
                        "   Discount Voucher",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 14, 94)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.support_agent_rounded),
                      Text(
                        "   Support",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 14, 94)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      Text(
                        "   Setting",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 14, 94)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      Text(
                        "   Loge Out",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
