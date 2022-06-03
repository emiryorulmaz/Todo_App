import 'package:flutter/material.dart';
import 'package:new_app/constants/color.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget({Key? key, required this.appBarActions})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  final Size preferredSize;
  final List<Widget> appBarActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: pageBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: appBarActions);
  }
}
