import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenShotDetail extends StatelessWidget {
  String data;
  ScreenShotDetail({this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'Preview',
                style: TextStyle(fontFamily: "arial"),
              ),
            )
          ];
        },
        body: Material(
          child: Container(
            height: 400,
            width: 200,
            child: CachedNetworkImage(
              imageUrl: data ?? " ",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CupertinoActivityIndicator(
                      // value: downloadProgress.progress,
                      ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
