import 'dart:html';
import 'package:doctorrating/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TiruHakim')),
        body: Center(child: Text('Home Screen')),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(),
                  radius: 50,
                ),
                SizedBox(height: 10),
                Text('user name',
                    style: TextStyle(color: Colors.blue[700], fontSize: 20))
              ],
            )),
            ListTile(
              title: Text('Login'),
              leading: Icon(Icons.login),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder:(context)=>LoginScreen()));
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        )));
  }
}
