import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/settings_providers.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('en');
              },
              child: settingsProvider.isArabicMode()
                  ? getUnSelectedItem('English')
                  : getSelectedItem('English')),
          const SizedBox(height: 20),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('ar');
              },
              child: settingsProvider.isArabicMode()
                  ? getSelectedItem("Arabic")
                  : getUnSelectedItem("Arabic")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.check),
      ],
    );
  }

  Widget getUnSelectedItem(String title) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
