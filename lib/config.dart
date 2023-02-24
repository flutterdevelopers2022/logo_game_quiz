import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Config
{
  static List Logo_list=[];
  double appbar_size=0,statusbar_size=0,tot_width=0,tot_height=0;
  Config(BuildContext context)
  {
     appbar_size =kToolbarHeight;
     statusbar_size=MediaQuery.of(context).padding.top;
     tot_width=MediaQuery.of(context).size.width;
     tot_height=MediaQuery.of(context).size.height-appbar_size-statusbar_size;
  }
 static   initImages() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('logo/'))
        .where((String key) => key.contains('.webp'))
        .toList();
        Logo_list=imagePaths;
  }
}