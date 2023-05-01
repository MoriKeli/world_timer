import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    // set background image
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color textColor = data['isDayTime'] ? Colors.black :  Colors.white;
    Color bgColor = data['isDayTime'] ? Colors.lightBlue :  Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget> [
                ElevatedButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'isDayTime': result['isDayTime'],
                          'countryFlag': result['countryFlag'],
                        };
                      });
                    },
                    icon: const Icon(Icons.location_on),
                  label: const Text('Edit location'),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 75.0, 0, 0),
                      child: Text(
                          data['location'],
                          style: TextStyle(
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                            color: textColor,
                          ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 60.0,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
