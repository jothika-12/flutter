import 'dart:convert';

import 'package:dio_practice/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  List<User> users =[];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest api call",),
        backgroundColor: const Color.fromARGB(255, 232, 239, 30),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final user =users[index];
          final imageUrl = user.thumbnail;
          final color=user.gender == 'male' ? Colors.blue : Colors.pinkAccent;
        return ListTile( 
          leading: CircleAvatar(
            child:Image.network(imageUrl),
          ),
          title: Text(user.name.first),
          subtitle: Text(user.phone),
          tileColor: color,
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers,backgroundColor: Color.fromARGB(255, 232, 239, 30),child: Icon(Icons.arrow_forward),),
    );
  }
  void fetchUsers()async {
    print("fetchers called");
    final url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response =  await http.get(uri);
    final body =response.body;
    final json = jsonDecode(body);
    final results =json['results'] as List<dynamic>;
    final transformed = results.map((e){
      final name = UserName(
        title:e['name']['title'],
        first:e['name']['first'],
        last:e['name']['last']
        );
      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        nat: e['nat'],
        phone: e['phone'],
        name: name,
        thumbnail: e['picture']['thumbnail']

      );
    }).toList();
    setState(() {
      users = transformed; 
    });
    print('fetchers completed');
  }
}