import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  var selected;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          body: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/sebhabody.png",
                  width: 180,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: MyThemeData.colorGold,
                  child: DropdownButton(
                    onTap: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    dropdownColor: Colors.grey,
                    hint: Text(
                      "الاذكار",
                    ),
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    alignment: Alignment.center,
                    onChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    value: selected,
                    items: [
                      "لا حول ولا قوة إلا بالله",
                      "لاإله إلا الله",
                      "استغفر الله ",
                      "الحمد لله ",
                      "سبحان الله ",
                      " الله اكبر"
                    ]
                        .map((e) => DropdownMenuItem(
                              child: Text(
                                "$e",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              value: e,
                            ))
                        .toList(),
                  ),
                ),
                Text(
                  "عدد التسبيحات",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "$counter",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                MyThemeData.colorGold),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: Text(
                          "تسبيح",
                          style: TextStyle(
                              color: MyThemeData.colorBlack, fontSize: 30),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    MyThemeData.colorGold),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        icon: Icon(Icons.repeat, color: Colors.black),
                        label: Text(
                          "إعادة",
                          style: TextStyle(
                              color: MyThemeData.colorBlack, fontSize: 30),
                        )),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
