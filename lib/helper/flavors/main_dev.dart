import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constants/flavor_resource.dart';
import 'package:flutter_base_project/helper/flavors/app_config.dart';
import 'package:flutter_base_project/main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart'; 

void main() async {
  var flavor = const AppConfig(
    flavorName: developmentFlavor,
    baseUrl: developmentBaseUrl,
    child: MyApp(),
  );
  mainCommon();
  return runApp(flavor);
}
