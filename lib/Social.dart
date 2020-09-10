import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  Social({this.url, this.navUrl});
  String url, navUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: GestureDetector(
          onTap: () => _launchURL(navUrl),
          child: CachedNetworkImage(
            imageUrl: url ?? " ",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CupertinoActivityIndicator(
                    // value: downloadProgress.progress,
                    ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        height: 60,
        width: 60,
      ),
    );
  }
}

_launchURL(navUrl) async {
  print("Pressed $navUrl`");
  if (await canLaunch(navUrl)) {
    await launch(navUrl);
  } else {
    throw 'Could not launch $navUrl';
  }
}
