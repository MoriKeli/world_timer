import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(Icons.location_on),
              label: const Text('Edit location'),
            )
          ],
        ),
      )
    );
  }
}
