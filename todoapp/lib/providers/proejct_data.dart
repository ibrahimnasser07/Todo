import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/components/models/project.dart';

class ProjectData extends ChangeNotifier {
  List<Project> _projectLists = [
    Project(
        name: "Personal",
        backgroundColor: Color(0xFFF5B5BE),
        iconData: Icons.person,
        description: "Personal Project Description"),
    Project(
        name: "Work",
        backgroundColor: Color(0xFF55CCD9),
        iconData: Icons.work,
        description: "Work Project Description"),
    Project(
        name: "Shopping",
        backgroundColor: Color(0xFFB5B5F5),
        iconData: Icons.shopping_cart,
        description: "Shopping Project Description"),
    Project(
      name: "Add Project",
      backgroundColor: Color(0xFFEFEFEF),
      iconData: FontAwesomeIcons.plusSquare,
    ),
  ];

  int get projectCount => projectLists.length;

  UnmodifiableListView<Project> get projectLists =>
      UnmodifiableListView(_projectLists);
}
