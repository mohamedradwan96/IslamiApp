import 'package:flutter/material.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:provider/provider.dart';

class ThemeeBottomSheet extends StatefulWidget {
  const ThemeeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeeBottomSheet> createState() => _ThemeeBottomSheetState();
}

class _ThemeeBottomSheetState extends State<ThemeeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.light);
              },
              child:
              settingsProvider.isDarkMode()?
              getUnSelectedItem('Light Mode'):
                  getSelectedItem("light Mode")
          ),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child:
              settingsProvider.isDarkMode()?
              getSelectedItem("Dark Mode"):
                  getUnSelectedItem("Dark Mode")
          ),
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
