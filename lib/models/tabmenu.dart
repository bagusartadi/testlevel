import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabMenu {
  final IconData icon;
  final String title;
  TabMenu({required this.icon, required this.title});
}

List<TabMenu> tabMenu = [
  TabMenu(icon: Icons.list, title: 'all'),
  TabMenu(icon: FontAwesomeIcons.gun, title: 'action'),
  TabMenu(icon: FontAwesomeIcons.ghost, title: 'scary'),
  TabMenu(icon: FontAwesomeIcons.peopleGroup, title: 'drama'),
  TabMenu(icon: FontAwesomeIcons.solidFaceSmile, title: 'fun')
];
