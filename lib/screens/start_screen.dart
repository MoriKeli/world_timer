import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Nairobi', countryFlag: 'kenya.png', timezone: 'Africa/Nairobi');
    await instance.getTime();

    //  redirect to homepage
    Navigator.pushReplacementNamed(
        context, '/home',
        arguments: {
          'location': instance.location,
          'flag': instance.countryFlag,
          'time': instance.time,
          'isDayTime': instance.isDayTime,
        }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
        ),
      ),
    );
  }
}
