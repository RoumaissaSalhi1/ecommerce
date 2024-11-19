import 'package:ecommece/controller/settings_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controller = Get.put(SettingsControllerImp());
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: CircleAvatar(
              radius: 65,
              backgroundColor: ColorApp.primary,
              child: CircleAvatar(
                radius: 63,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      Imageasset.storeLogo), // Replace with your asset
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Username',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 40),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const Text('Account'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications_active_outlined),
            title: const Text('Notifications'),
            trailing: Switch(value: false, onChanged: (bool) {}),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.info_outline),
            title: const Text('About us'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.contact_support_outlined),
            title: const Text('Contact us'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              controller.logout();
            },
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
