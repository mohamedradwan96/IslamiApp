import 'package:flutter/material.dart';
import 'package:islami/AppTheme/mytheme.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_providers.dart';

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
    var settingsProvider = Provider.of<SettingsProviders>(context);
    return Stack(
      children: [
        Image.asset(
          settingsProvider.getmainBackground(),          width: double.infinity,
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
                      bottom: 65,
                      child: Text(
                        "$counter",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center,
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
                    border: Border.all(color: MyThemeData.colorWhite),
                    borderRadius: BorderRadius.circular(30),
                    color: MyThemeData.colorGold,
                  ),
                  height: 50,
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
                    dropdownColor: Theme.of(context).primaryColor,
                    hint: Text(
                      "الاذكار",
                      style: Theme.of(context).textTheme.subtitle2,
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
                            backgroundColor: const MaterialStatePropertyAll<Color>(
                                MyThemeData.colorGold),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: Text(
                          "تسبيح",
                          style: Theme.of(context).textTheme.subtitle2,
                        )),
                    ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll<Color>(
                                MyThemeData.colorGold),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        icon: const Icon(Icons.repeat,
                            color: MyThemeData.colorWhite),
                        label: Text(
                          "إعادة",
                          style: Theme.of(context).textTheme.subtitle2,
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
