import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iot_attendance_system/utils/strings.dart';

class AppHeader extends StatelessWidget {
  final Widget child;
  const AppHeader({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Column(
          children: [const AppBackButton(), Expanded(child: child)],
        ),
      ),
    );
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () => AutoRouter.of(context).replaceNamed('/'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios,
                    color: Theme.of(context).primaryColor),
                Text(Strings.back,
                    style: TextStyle(color: Theme.of(context).primaryColor)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
