import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet_alexis/domain/entities/contact.dart';
import 'package:projet_alexis/presentation/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:projet_alexis/presentation/nav/routes.dart';

import 'clients_view_controller.dart';

class ClientView extends GetView<ClientViewController> {
  List<String> Names = [
    'Jean-Paul',
    'Paul',
    'Alexis',
    'Jerry',
    'Brice',
    'Quentin',
    'Stanislas'
  ];
  List<String> Mobile = [
    "06 71 59 57 60",
    "06 58 15 48 25",
    "06 95 89 45 42",
    "05 26 45 62 45",
    "07 45 85 25 86",
    "05 82 15 48 62",
    "06 58 25 36 54"
  ];
  List<String> Mail = [
    "jp.larue@laposte.net",
    "paul@xefi.fr",
    "alexis@xefi.fr",
    "jerry@xefi.fr",
    "brice@xefi.fr",
    "quentin@xefi.fr",
    "stanislas@xefi.fr"
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(ClientViewController());

    RxList<Contact> listClient = controller.contact;
    // listClient[index].maillistClient[index].mail
    return Scaffold(
      backgroundColor: Get.theme.secondaryHeaderColor,
      appBar: AppBar(
        title: const Center(
          child: Text("Mon app"),
        ),
        backgroundColor: kGrey6,
        automaticallyImplyLeading: false,
      ),
      body:
      Obx(
        () => listClient.isNotEmpty
            ? ListView.builder(
                reverse: false,
                itemBuilder: (_, int index) => buildContactItem(
                  context,
                  listClient[index],
                ),
                itemCount: listClient.length,
              )
            : const SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Get.theme.secondaryHeaderColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

// class NameList extends StatelessWidget {
//   final String name;
//   final String mobile;
//   final String mail;
//
//   const NameList(this.name, this.mobile, this.mail);

@override
Widget buildContactItem(BuildContext context, Contact contact) {
  return Padding(
    padding: const EdgeInsets.all(9.0),
    child: SizedBox(
      height: context.height / 5.5,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        contact.name ?? "",
                        style: const TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.MODIF, arguments: contact.name);
                    },
                    icon: const Icon(Icons.more_horiz),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Icon(Icons.call),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      contact.mobile ?? "",
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Icon(Icons.mail),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      contact.mail ?? "",
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
// }
