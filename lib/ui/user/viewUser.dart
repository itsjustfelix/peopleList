import 'package:app_25_ago/models/user.dart';
import 'package:flutter/material.dart';

class Viewuser extends StatelessWidget {
  final User usuario;
  const Viewuser({super.key, required this.usuario});

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
          Text("User Data", style: TextStyle(fontSize: 17.0)),
          const SizedBox(height: 16),
          TextField(
            readOnly: true,
            controller: nombreController,
            decoration: const InputDecoration(
              labelText: "Name",
              icon: Icon(Icons.person_3_outlined),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            readOnly: true,
            controller: userNameController,
            decoration: const InputDecoration(
              labelText: "UserName",
              icon: Icon(Icons.alternate_email_rounded),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            readOnly: true,
            controller: emailController,
            decoration: const InputDecoration(
              labelText: "Email",
              icon: Icon(Icons.alternate_email_rounded),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            readOnly: true,
            controller: phoneController,
            decoration: const InputDecoration(
              labelText: "Phone number",
              icon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: websiteController,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "Website",
              icon: Icon(Icons.web_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
