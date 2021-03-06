import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:potato_fries/data/constants.dart';
import 'package:potato_fries/provider/app_info.dart';
import 'package:potato_fries/widgets/settings_dropdown.dart';
import 'package:provider/provider.dart';

class IconPackPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsDropdownTile(
      title: 'System icon Pack',
      subtitle: 'Pick system icon pack',
      icon: Icon(MdiIcons.wifiStrength3),
      setValue: (val) => Provider.of<AppInfoProvider>(context, listen: false)
          .setIconPack(int.parse(val)),
      getValue: () =>
          Provider.of<AppInfoProvider>(context).getIconPackIndex().toString(),
      values: Map.fromIterable(
        iconPackLabels,
        key: (element) => iconPackLabels.indexOf(element).toString(),
        value: (element) => element,
      ),
    );
  }
}
