
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projet_alexis/presentation/views/clients_view.dart';
import 'package:projet_alexis/presentation/views/modif_client_view.dart';

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.CLIENTS,
      page: () => ClientView(),
    ),
    GetPage(
      name: Routes.MODIF,
      page: () => ModifClientView(),
    ),
  ];
}
