import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations = [
    WorldTime(location: 'Cairo', countryFlag: 'egypt.png', timezone: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', countryFlag: 'kenya.png', timezone: 'Africa/Nairobi'),
    WorldTime(location: 'Berlin', countryFlag: 'germany.png', timezone: 'Europe/Berlin'),
    WorldTime(location: 'London', countryFlag: 'uk.png', timezone: 'Europe/London'),
    WorldTime(location: 'Seoul', countryFlag: 'south-korea.png', timezone: 'Asia/Seoul'),
    WorldTime(location: 'Tokyo', countryFlag: 'japan.png', timezone: 'Asia/Tokyo'),
    WorldTime(location: 'Toronto', countryFlag: 'canada.png', timezone: 'America/Toronto'),
    WorldTime(location: 'New York', countryFlag: 'us.png', timezone: 'America/New_York'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/flag-icons/${locations[index].countryFlag}'),

                  ),
                ),
              ),
            );
          },
      ),

    );
  }
}
