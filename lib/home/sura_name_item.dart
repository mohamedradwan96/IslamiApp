import 'package:flutter/material.dart';

import '../sura_details.dart';

class SuraNameItems extends StatelessWidget {
  String suraName;

  SuraNameItems(this.suraName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routName,
        arguments: SuraDetailsArgs(suraName));
      },
      child: Center(
          child: Text(
        suraName,
        style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
      )),
    );
  }
}
