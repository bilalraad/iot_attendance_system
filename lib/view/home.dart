import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              // child: ProjectsList(),
            ),
          ),
          Container(
            width: 100,
            color: Colors.white,
            child: Column(
              children: [],
            ),
          )
        ],
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
