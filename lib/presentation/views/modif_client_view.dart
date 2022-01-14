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

    String monArgument = "";

    if(Get.arguments != null){
      monArgument = Get.arguments;
    }

    return Scaffold(
      backgroundColor: Get.theme.secondaryHeaderColor,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        title:  Center(
          child: Text(monArgument),
        ),
        backgroundColor: kGrey6,
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: TextFormField(
                                // onSaved: (value) => mafonction = value,
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 150,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Nom',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(
                                    minWidth: 100,
                                    maxWidth: 150,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Prenom',
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
                  height: context.height / 1.8,
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