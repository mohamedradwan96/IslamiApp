import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_providers.dart';


class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);
    return Stack(children: [
      Image.asset(
        settingsProvider.getmainBackground(),
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        body: Column(
          children: [
            Expanded(child: Image.asset("assets/images/radioIcon.png")),
            Text("إذاعة القرآن الكريم ",style:Theme.of(context).textTheme.bodyText1,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.skip_previous,size:60,),
                  Icon(Icons.play_arrow,size:60,),
                  Icon(Icons.skip_next,size:60,)
                ],
              ),
            )

          ],
        ),
      )
    ]);
  }
}
