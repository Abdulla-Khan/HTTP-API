import 'package:flutter/material.dart';
import 'package:httpddd/controller/api_controller.dart';

import '../model/api_model.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  ApiController controller = ApiController();
  submitForm() async {
    List<Users> eachposts = await controller.fetchUsers();
    print(eachposts[0].id);
    return eachposts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Calling Flutter HTTP GET"),
        centerTitle: true,
        backgroundColor: Colors.white,
        // elevation: 0,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                submitForm();
              },
              child: const Text('Call API'))
        ],
      ),
    );
  }
}
