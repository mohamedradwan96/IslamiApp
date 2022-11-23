import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

class SuraDetails extends StatelessWidget {
static const String routName ="SuraDetails";
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(args.suraName,style: Theme.of(context).textTheme.headline1,),
          ),
        ),
      ],
    );
  }
}
 class SuraDetailsArgs {
  String suraName;
  SuraDetailsArgs(this.suraName);
 }