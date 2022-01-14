import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:projet_alexis/domain/entities/contact.dart';

class ClientViewController extends GetxController {
  RxList<Contact> contact = <Contact>[
    Contact(
      name: 'Jean-Paul',
      mail: 'jp.larue@laposte.net',
      mobile: '06 71 59 57 60',
    ),
    Contact(
        name: 'Paul',
        mail: 'paul@xefi.fr',
        mobile: '06 58 15 48 25',
    ),
    Contact(
      name: 'Alexis',
      mail: 'alexis@xefi.fr',
      mobile: '06 95 89 45 42',
    ),
    Contact(
      name: 'Jerry',
      mail: 'jerry@xefi.fr',
      mobile: '05 26 45 62 45',
    ),
    Contact(
      name: 'Brice',
      mobile: '07 45 85 25 86',
      mail: 'brice@xefi.fr',
    ),
    Contact(
      name: 'Quentin',
      mobile: '05 82 15 48 62',
      mail: 'quentin@xefi.fr',
    ),
    Contact(
      name: 'Stanislas',
      mobile: '06 58 25 36 54',
      mail: 'stanislas@xefi.fr',
    ),
  ].obs;

}
