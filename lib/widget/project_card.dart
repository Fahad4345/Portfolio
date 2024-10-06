import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String icons;
  final String description;

  const ProjectCard({
  super.key, 
  required this.icons,
  required this.description});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:300,
      color: Colors.grey,
      child: Column(children: [
     Image.asset (widget.icons),
     Text(
      widget.description,
     )
      ],),);
  }
}
