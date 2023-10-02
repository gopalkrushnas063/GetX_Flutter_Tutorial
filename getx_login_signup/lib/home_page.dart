import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_login_signup/login_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(height: 50),
            Obx(
              () {
                return InkWell(
                  onTap: () {
                    controller.loginApi();
                  },
                  child: controller.loading.value
                      ? const CircularProgressIndicator()
                      : Container(
                          height: 45,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("LOGIN"),
                          ),
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
