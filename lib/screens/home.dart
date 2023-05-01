import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map<dynamic, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget> [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(Icons.location_on),
                label: const Text('Edit location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 30.0,
                        letterSpacing: 2.0,
                      ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
