import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget profileWidget({String? imageUrl, File? image}) {
  if (image == null) {
    if (image == null || imageUrl == "") {
      return Image.asset(
        "assets/images/user.png",
        fit: BoxFit.cover,
      );
    } else {
      return CachedNetworkImage(
        imageUrl: "$imageUrl",
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return const CircularProgressIndicator();
        },
        errorWidget: (context, url, error) => Image.asset(
          "assets/images/user.png",
          fit: BoxFit.cover,
        ),
      );
    }
  } else {
    return Image.file(
      image,
      fit: BoxFit.cover,
    );
  }
}
