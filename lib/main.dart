import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('homepage'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => Secondpage());
          Navigator.push(context, route);
        }, child: Text('secondhome'),

        ),
      ),
    );
  }
}


class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);
  user ? user;

  @override
  Widget build(BuildContext context) {
RouteSettings ? settings = ModalRoute.of(context)?.settings;
user = settings?.arguments as User?;
    return Scaffold(
      appBar: AppBar(
        title: Text('homepage'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
          child: Text('welcome to my secondhome'),
        ),
      ),
    );
  }
}


