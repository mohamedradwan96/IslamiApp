import 'package:flutter/material.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:provider/provider.dart';

import 'home/tabs/ahadeth.dart';
import 'mytheme.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethArgs;
    return Stack(children: [
      Image.asset(
        settingsProvider.getmainBackground(),
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              border: Border.all(color: MyThemeData.colorGold, width: 2)),
          child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: MyThemeData.colorGold,
                indent: 30,
                endIndent: 30,
                thickness: 2,
              ),
              itemCount: args.content.length,
              itemBuilder: (_, index) {
                return Text(
                  args.content[index],
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                );
              }),
        ),
      )
    ]);
  }
}