import 'package:flutter/material.dart';
import 'package:potato_fries/pages/base_page.dart';
import 'package:potato_fries/provider/page_provider_registry.dart';
import 'package:potato_fries/widgets/page_parser.dart';
import 'package:provider/provider.dart';

class Misc extends BasePage {
  @override
  String get title => "Miscellaneous";

  @override
  IconData get icon => Icons.tune;

  @override
  String get providerKey => "misc";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: PageProviderRegistry.getProvider(providerKey),
      child: Builder(
        builder: (providerContext) => Column(
          children: <Widget>[
            Container(),
            PageParser(dataKey: providerKey),
          ],
        ),
      ),
    );
  }
}
