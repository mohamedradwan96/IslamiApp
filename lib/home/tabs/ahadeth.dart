import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/mytheme.dart';

import '../../hadeth_details.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethArgs> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth.png"),
        const Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        const Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        ahadeth.isEmpty
            ? CircularProgressIndicator()
            : Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                          color: MyThemeData.colorGold,
                          endIndent: 30,
                          indent: 30,
                        ),
                    itemCount: ahadeth.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HadethDetails.routeName,
                                arguments: ahadeth[index]);
                          },
                          child: Text(ahadeth[index].title, style: Theme.of(context).textTheme.subtitle2,
                            textAlign: TextAlign.center,));
                    }),
              )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');

    List<String> AllAhadeth = content.trim().split('#\r\n');

    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth = AllAhadeth[i];
      List<String> HadethLines = hadeth.split("\n");
      String title = HadethLines[0];
      HadethLines.removeAt(0);

      HadethArgs hadethData = HadethArgs(title, HadethLines);
      ahadeth.add(hadethData);
    }
    setState(() {});
  }
}

class HadethArgs {
  String title;
  List<String> content;

  HadethArgs(this.title, this.content);
}
