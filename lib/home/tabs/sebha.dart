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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/sebhabody.png",
                      width: 180,
                    ),
                    Positioned(
                      bottom:65,
                      child: Text(
                        "$counter",
                        style: const TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0.0, 0),
                      ),
                    ],
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    color: MyThemeData.colorGold,
                  ),
                  height: 40,
                  child: DropdownButton(
                    underline: const Divider(
                      thickness: 0,
                      color: Colors.transparent,
                    ),
                    onTap: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    dropdownColor: Colors.grey,
                    hint: const Text("الاذكار"),
                    alignment: Alignment.center,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
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
                              alignment: Alignment.center,
                              value: e,
                              child: Text(
                                "$e",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 100),
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
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    MyThemeData.colorGold),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: const Text(
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
                        icon: const Icon(Icons.repeat, color: Colors.black),
                        label: const Text(
                          "إعادة",
                          style: TextStyle(
                              color: MyThemeData.colorBlack, fontSize: 30),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
