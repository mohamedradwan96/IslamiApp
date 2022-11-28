import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/background.png",
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
                  Icon(Icons.skip_previous,color: MyThemeData.colorGold,size:60,),
                  Icon(Icons.play_arrow,color: MyThemeData.colorGold,size:60,),
                  Icon(Icons.skip_next,color: MyThemeData.colorGold,size:60,)
                ],
              ),
            )

          ],
        ),
      )
    ]);
  }
}
