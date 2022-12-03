import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verse.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          settingsProvider.getmainBackground(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verse.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(color: MyThemeData.colorGold, width: 2)),
                child: ListView.builder(
                    itemCount: verse.length,
                    itemBuilder: (C, index) {
                      return Container(
                        child: Text(
                          verse[index],
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
              ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verse = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs(this.suraName, this.index);
}
