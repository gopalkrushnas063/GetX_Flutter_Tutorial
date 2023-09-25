import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialogue Alert'),
              subtitle: Text('GetX Dialogue Alert With GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: "Are you sure you want to delete this chat",
                  textConfirm: "Yes",
                  textCancel: "No",
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text('GetX Dialogue Alert With GetX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.light);
                          },
                          leading:const Icon(Icons.light_mode),
                          title:const Text('Light Theme'),
                        ),
                        ListTile(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.dark);
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'BoostYourSoul',
            'Subscribe my channel',
            icon: const Icon(Icons.notifications),
            snackPosition: SnackPosition.TOP,
          );
        },
      ),
    );
  }
}
