import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet_alexis/domain/entities/contact.dart';
import 'package:projet_alexis/presentation/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:projet_alexis/presentation/nav/routes.dart';

import 'clients_view_controller.dart';

class ClientView extends GetView<ClientViewController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ClientViewController());
    RxList<Contact> listClient = controller.contact;
    // listClient[index].maillistClient[index].mail
    return Scaffold(
      backgroundColor: Get.theme.secondaryHeaderColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Mon app",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 50,
              child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            ),
          ],
        ),
        backgroundColor: kGrey6,
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () => listClient.isNotEmpty
            ? ListView.builder(
                reverse: false,
                itemBuilder: (_, int index) => buildContactItem(
                  context,
                  listClient[index],
                  index,
                ),
                itemCount: listClient.length,
              )
            : const SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Contact contact = Contact(
              name: "New Client",
              lastName: "",
              mail: "",
              fixe: "",
              faxe: "",
              job: "",
              mobile: "",
              society: "");
          listClient.add(contact);
        },
        backgroundColor: Get.theme.secondaryHeaderColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

@override
Widget buildContactItem(BuildContext context, Contact contact, int index) {
  String name = "";

  return Padding(
    padding: const EdgeInsets.all(9.0),
    child: SizedBox(
      height: context.height / 5.5,
      child: InkWell(
        onTap: () {
          Get.toNamed(
            Routes.MODIF,
            arguments: {
              "name": contact.name,
              "lastName": contact.lastName,
              "job": contact.job,
              "society": contact.society,
              "mobile": contact.mobile,
              "mail": contact.mail,
              "fixe": contact.fixe,
              "faxe": contact.faxe,
              "index": index.toString(),
            },
          );
        },
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
                        Get.toNamed(
                          Routes.MODIF,
                          arguments: {
                            "name": contact.name,
                            "lastName": contact.lastName,
                            "job": contact.job,
                            "society": contact.society,
                            "mobile": contact.mobile,
                            "mail": contact.mail,
                            "fixe": contact.fixe,
                            "faxe": contact.faxe,
                          },
                        );
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
    ),
  );
}
