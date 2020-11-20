import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';
import 'package:portfolio/Projects.dart';
import 'package:portfolio/models/project_info.dart';
import '../Data/projectsData.dart';

class HomeProjects extends StatefulWidget {
  @override
  _HomeProjectsState createState() => _HomeProjectsState();
}

class _HomeProjectsState extends State<HomeProjects> {
  List<ProjectInfo> allProjectslistData = [];
  @override
  void initState() {
    allProjectslistData = RowData.getProjectsData();
    super.initState();
  }

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
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: allProjectslistData.length,
                itemBuilder: (context, i) {
                  if (allProjectslistData != null) {
                    return Projects(oneData: allProjectslistData[i]);
                  } else {
                    return CupertinoActivityIndicator();
                  }
                },
              ),
            ),
            // Container(
            //   width: 400,
            //   // color: Colors.grey,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Projects(),
            //       space2(),
            //       Projects(),
            //       space2(),
            //       Projects(),
            //       space2(),
            //       // Projects(),
            //       // space2(),
            //       // Projects(),
            //       // space2(),
            //       // Projects(),
            //       // space2(),
            //       // Projects(),
            //       // space2(),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
