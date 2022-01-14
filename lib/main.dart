import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet_alexis/presentation/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:projet_alexis/presentation/nav/navigation.dart';
import 'package:projet_alexis/presentation/nav/routes.dart';
import 'package:projet_alexis/presentation/views/clients_view.dart';

main() => runApp(
    GetMaterialApp(
      home: ClientView(),
      initialRoute: Routes.CLIENTS,
      getPages: Nav.routes,
      debugShowCheckedModeBanner: false,
    ));
