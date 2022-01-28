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
      controller.textEditingController.text = monArgument['name'] ?? "";
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
                  height: context.height / 2.3,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
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
                                controller: controller.textEditingController,
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
                                initialValue: monArgument['lastName'],
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
                                initialValue: monArgument['society'],
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
                                initialValue: monArgument['job'],
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
                child: Container(
                  height: context.height / 2.1,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                initialValue: monArgument['tel'] ?? "Aucun numéro de téléphone fixe" ,
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
                                initialValue: monArgument['mobile'],
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
                                initialValue: monArgument['fax'] ?? "Aucun numéro faxe" ,
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
                                initialValue: monArgument['mail'],
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