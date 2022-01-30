import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet_alexis/domain/entities/contact.dart';
import 'package:projet_alexis/presentation/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:projet_alexis/presentation/nav/routes.dart';

import 'clients_view_controller.dart';

class ModifClientView extends GetView<ClientViewController> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    Map<String, String?> monArgument = {};

    if(Get.arguments != null){
      monArgument = Get.arguments;
      controller.textEditingControllerFirstName.text = monArgument['name'] ?? "";
      controller. textEditingControllerLastName.text = monArgument['lastName'] ?? "";
      controller. textEditingControllerJob.text = monArgument['job'] ?? "";
      controller. textEditingControllerSociety.text = monArgument['society'] ?? "";
      controller. textEditingControllerMail.text = monArgument['mail'] ?? "";
      controller. textEditingControllerMobile.text = monArgument['mobile'] ?? "";
      controller. textEditingControllerFixe.text = monArgument['fixe'] ?? "Aucun numéro de téléphone fixe";
      controller. textEditingControllerFaxe.text = monArgument['faxe'] ?? "Aucun numéro faxe";
    }

    return Scaffold(
      appBar: AppBar(
        title:  Text(monArgument['name'] ?? ""),
        backgroundColor: kGrey6,
        actions:[
          IconButton(
              onPressed: () async {
                await controller.modifyContact(monArgument['index'] ?? "");
                Get.back();
              },
              icon: const Icon(Icons.check_circle_outline, color: Colors.green,),
          ),
    ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: context.height / 2.4,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Information",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.textEditingControllerFirstName,
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 141,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Prenom',

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: TextFormField(
                                // onSaved: (value) => mafonction = value,
                                controller: controller.textEditingControllerLastName,
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 141,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Nom',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                               controller: controller.textEditingControllerSociety,
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Société',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.textEditingControllerJob,
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'poste',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: context.height / 2.1,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Coordonnées",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.textEditingControllerFixe,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Téléphone',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.textEditingControllerMobile,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_iphone,
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Portable',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                               controller: controller.textEditingControllerFaxe,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.call_end,
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Fax',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.textEditingControllerMail,
                                onChanged: (e){
                                  e = controller.textEditingControllerMail.text;
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 300,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Email',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Widget _buildAppItem(ClientTest client, BuildContext context) {
// return Text("test"),
// }
}