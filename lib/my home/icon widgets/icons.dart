import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/icon%20widgets/values/icon.dart';
import 'package:my_project_becky/screens/utilities/colors.dart';

List<Icon> GetIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(constructionIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(carpenterIcon, fontFamily: 'MaterialIcons'),
      color: pink,
    ),
    Icon(
      IconData(plumberIcon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(hammerIcon, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(electricalIcon, fontFamily: 'MaterialIcons'),
      color: deepPink,
    ),
    Icon(
      IconData(roofingIcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,
    ),
  ];
}
