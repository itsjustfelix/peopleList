import 'package:app_25_ago/models/user.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    final nombreController = TextEditingController();
    final userNameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final websiteController = TextEditingController();

    return AlertDialog(
      title: Text("Add new User"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                labelText: "Name",
                icon: Icon(Icons.person_3_outlined),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                labelText: "UserName",
                icon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                icon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: "Phone number",
                icon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: websiteController,
              decoration: const InputDecoration(
                labelText: "Website",
                icon: Icon(Icons.web_rounded),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            addUser(
              nombre: nombreController.value.text,
              userName: userNameController.value.text,
              email: emailController.value.text,
              phone: phoneController.value.text,
              website: websiteController.value.text,
            );
            Navigator.of(context).pop();
          },
          child: const Text("Save User"),
        ),
      ],
    );
  }
}
