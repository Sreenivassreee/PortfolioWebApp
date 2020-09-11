import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Data/projectsData.dart';
import 'package:portfolio/Projects.dart';
import 'package:portfolio/Social.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  // void initState() {
  //   print(Data().getProjectsData()[0].projectName);
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'K Sreenivasulu',
                style: TextStyle(fontFamily: "arial"),
              ),
              trailing: Icon(CupertinoIcons.brightness),
            )
          ];
        },
        body: Material(
          color: Colors.indigo[200],
          type: MaterialType.transparency,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    space(),
                    space(),
                    Center(
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 100,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 130,
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/sree.png?alt=media&token=de277b11-4933-4f23-a837-f499a010540e",
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CupertinoActivityIndicator(
                                        // value: downloadProgress.progress,
                                        ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),

                          // child: Image.network(
                          //   'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/sree.png?alt=media&token=de277b11-4933-4f23-a837-f499a010540e',
                          // ),
                          // shape: BoxShape.circle
                        ),
                      ),
                    ),
                    space(),
                    Center(
                      child: Text(
                        "Kummara Sreenivasulu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    space(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "About",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Social(
                              url:
                                  "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/icons%2Ficonfinder_mark-github_298822.png?alt=media&token=041b0ba4-82b1-4f79-ba99-46d82836eab4",
                              navUrl: "https://github.com/Sreenivassreee",
                            ),
                            space(),
                            Social(
                              url:
                                  "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/icons%2Ficonfinder_Circled_Linkedin_svg_5279114(1).png?alt=media&token=6daa82d3-89ab-4a74-924c-d3facc81a729",
                            ),
                            space(),
                            Social(
                              url:
                                  "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/icons%2F5279120-512.png?alt=media&token=f1b8d03f-ef21-46ba-839d-7efbd11775ca",
                            ),
                            space(),
                            Social(
                              url:
                                  "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/icons%2Ficonfinder_Circled_Instagram_svg_5279112.png?alt=media&token=76092cad-3a8b-4dc4-8bc6-e4ab235b8d07",
                            ),
                            space(),
                            Social(),
                            space(),
                            Social(),
                          ],
                        ),
                      ),
                    ),
                    space(),
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
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget space() {
  return SizedBox(
    height: 20,
  );
}

Widget space2() {
  return SizedBox(
    height: 15,
  );
}
