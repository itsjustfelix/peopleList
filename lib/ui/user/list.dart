import 'package:app_25_ago/models/user.dart';
import 'package:app_25_ago/ui/user/add.dart';
import 'package:app_25_ago/ui/user/editUser.dart';
import 'package:app_25_ago/ui/user/viewUser.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Users"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AddUser();
                },
              ).then((_) {
                setState(() {});
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${listUsers[index].id}")),
            title: Text(listUsers[index].name),
            subtitle: Text(listUsers[index].username),
            trailing: Icon(Icons.call_outlined),
            onLongPress: () {
              listUsers.removeAt(index);
              setState(() {});
            },
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.visibility),
                        title: Text("See user Data"),
                        onTap: () {
                          Navigator.pop(context);
                          showModalBottomSheet(
                            context: context,
                            isDismissible: true,
                            barrierColor: const Color.fromARGB(130, 0, 0, 0),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),

                            builder: (context) {
                              return Viewuser(usuario: listUsers[index]);
                            },
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.edit_attributes_outlined),
                        title: Text("Edit User Data"),
                        onTap: () async {
                          Navigator.pop(context);
                          await showModalBottomSheet(
                            context: context,
                            isDismissible: true,
                            barrierColor: const Color.fromARGB(130, 0, 0, 0),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),

                            builder: (context) {
                              return Edituser(usuario: listUsers[index]);
                            },
                          );
                          setState(() {});
                        },
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
