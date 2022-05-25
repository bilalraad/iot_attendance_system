import 'package:flutter/material.dart';
import 'package:iot_attendance_system/view/session/sessions_list.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SessionsList(),
      ),
    );
  }
}

class SideBarItem extends StatelessWidget {
  final Icon icon;
  final String? title;
  final VoidCallback onPressed;
  const SideBarItem(
      {Key? key, required this.icon, this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            icon,
            Text(title ?? '', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
