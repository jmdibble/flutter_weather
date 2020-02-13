import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

class Today extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new FutureBuilder<List<User>>(
        future: fetchUsersFromGitHub(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.data[index].avatar)),
                  title: Text(snapshot.data[index].name,
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            );
          } else if (snapshot.hasError) {
            return new Text("${snapshot.error}");
          }
          // By default, show a loading spinner
          return new Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }

  Future<List<User>> fetchUsersFromGitHub() async {
    final response = await http.get('https://api.github.com/users');
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    print(responseJson);
    List<User> userList = createUserList(responseJson);
    return userList;
  }

  List<User> createUserList(List data) {
    List<User> list = new List();
    for (int i = 0; i < data.length; i++) {
      String title = data[i]["login"];
      int id = data[i]["id"];
      String avatar = data[i]["avatar_url"];
      User user = new User(name: title, id: id, avatar: avatar);
      list.add(user);
    }
    return list;
  }
}

class User {
  String name;
  int id;
  String avatar;
  User({this.name, this.id, this.avatar});
}
