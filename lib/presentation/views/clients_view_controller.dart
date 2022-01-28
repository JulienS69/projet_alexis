import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:projet_alexis/domain/entities/contact.dart';

class ClientViewController extends GetxController {
  final textEditingController = TextEditingController(text: '');

  RxList<Contact> contact = <Contact>[
    Contact(
      name: 'Jean-Paul',
      lastName: 'Gautier',
      job: 'Travailleur',
      society: 'Fixe',
      mail: 'jp.larue@laposte.net',
      mobile: '06 71 59 57 60',
    ),
    Contact(
      name: 'Paul',
      lastName: 'Bocuse',
      job: 'Cuisinier',
      society: 'PaulBouse',
      mail: 'paul@xefi.fr',
      mobile: '06 58 15 48 25',
    ),
    Contact(
      name: 'Alexis',
      lastName: 'Corbillard',
      job: 'Communiste',
      society: 'PS',
      mail: 'alexis@xefi.fr',
      mobile: '06 95 89 45 42',
    ),
    Contact(
      name: 'Jerry',
      lastName: 'Golé',
      job: "Humoriste",
      society: 'Hall tony Garnier',
      mail: 'jerry@xefi.fr',
      mobile: '05 26 45 62 45',
    ),
    Contact(
      name: 'Brice',
      lastName: 'De Nice',
      job: 'Casseur',
      society: 'Pole Emploie',
      mobile: '07 45 85 25 86',
      mail: 'brice@xefi.fr',
    ),
    Contact(
      name: 'Quentin',
      lastName: 'Tarantino',
      job: 'Réalisateur',
      society: 'Paramount',
      mobile: '05 82 15 48 62',
      mail: 'quentin@xefi.fr',
    ),
    Contact(
      name: 'Stanislas',
      lastName: 'Rigault',
      job: 'Président',
      society: 'Génération Z',
      mobile: '06 58 25 36 54',
      mail: 'stanislas@xefi.fr',
    ),
  ].obs;

  Future<void> modifyContact(String index) async {
    if (int.tryParse(index) != null) {
      contact[int.parse(index)].name = textEditingController.text;
    }
  }
}
