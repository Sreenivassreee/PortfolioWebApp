import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';
import 'package:portfolio/Screens/ProjectDetailsPage.dart';
import 'package:portfolio/models/project_info.dart';

class Projects extends StatelessWidget {
  ProjectInfo oneData;
  Projects({this.oneData});
  @override
  Widget build(BuildContext context) {
    print("aaaaaqaaaaaaghfaghsdfagsdfasghdfasdgafsdghasdf  ${oneData.icon}");
    return Center(
      child: Container(
          // color: Colors.red,
          height: 200,

          // width: MediaQuery.of(context).size.width - 30,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProjectDetailsPage(detailOneData: oneData),
                  ),
                );
              },
              child: Card(
                color: Colors.white,
                elevation: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Hero(
                              tag: oneData.icon,
                              child: Image.network(oneData.icon
                                  // imageUrl:
                                  // "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/projects%2FMathCrush.png?alt=media&token=63725895-9690-425b-9d15-ea4abada5392",
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        // color: Colors.yellow,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15, left: 8, right: 8, bottom: 12),
                              child: Text(
                                oneData.projectName,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                // color: Colors.amber,
                                height: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Platform : ${oneData.platform}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Languages : ${oneData.languages}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Tools : ${oneData.tools}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "DataBase : ${oneData.platform}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.open_in_new_rounded),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    space2(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
