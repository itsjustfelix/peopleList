import 'package:app_25_ago/models/user.dart';
import 'package:flutter/material.dart';

class Edituser extends StatelessWidget {
  final User usuario;
  const Edituser({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    TextEditingController? userNameController = TextEditingController(
      text: usuario.username,
    );
    TextEditingController? nombreController = TextEditingController(
      text: usuario.name,
    );
    TextEditingController? emailController = TextEditingController(
      text: usuario.email,
    );
    TextEditingController? phoneController = TextEditingController(
      text: usuario.phone,
    );
    TextEditingController? websiteController = TextEditingController(
      text: usuario.website,
    );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Edit User Data", style: TextStyle(fontSize: 17.0)),
          const SizedBox(height: 16),
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

          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              editUser(
                User(
                  id: usuario.id,
                  username: userNameController.value.text,
                  name: nombreController.value.text,
                  email: emailController.value.text,
                  phone: phoneController.value.text,
                  website: websiteController.value.text,
                  company: usuario.company,
                  address: usuario.address,
                ),
              );
              Navigator.of(context).pop();
            },
            child: Text("Edit User"),
          ),
        ],
      ),
    );
  }
}
