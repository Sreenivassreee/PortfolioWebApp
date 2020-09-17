import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';
import 'package:portfolio/Projects.dart';

class HomeProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Projects",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          space(),
          Center(
            child: Container(
              width: 400,
              // color: Colors.grey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Projects(),
                  space2(),
                  // Projects(),
                  // space2(),
                  // Projects(),
                  // space2(),
                  // Projects(),
                  // space2(),
                  // Projects(),
                  // space2(),
                  // Projects(),
                  // space2(),
                  // Projects(),
                  // space2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
