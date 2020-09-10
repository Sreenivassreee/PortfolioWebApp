import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          // color: Colors.red,
          height: 200,

          // width: MediaQuery.of(context).size.width - 30,
          child: Center(
            child: Card(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 2,
                    child: Center(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/projects%2FMathCrush.png?alt=media&token=63725895-9690-425b-9d15-ea4abada5392",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  space2(),
                ],
              ),
            ),
          )),
    );
  }
}
