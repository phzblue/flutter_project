import 'package:flutter/material.dart';
import 'package:project1/constant/controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            "Welcome back, ${globalC.profileData.id}",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Expanded(child: Text('Email')),
              Expanded(flex: 2, child: Text(globalC.profileData.email)),
            ],
          ),
          Row(
            children: [
              const Expanded(child: Text('Gender')),
              Expanded(flex: 2, child: Text(globalC.profileData.gender)),
            ],
          ),
          Row(
            children: [
              const Expanded(child: Text('Last Login')),
              Expanded(
                  flex: 2,
                  child: Text(globalC.profileData.last_login.date_time)),
            ],
          ),
          Row(
            children: [
              const Expanded(child: Text('IP')),
              Expanded(
                  flex: 2, child: Text(globalC.profileData.last_login.ip4)),
            ],
          ),
        ]),
      ),
    );
  }
}
