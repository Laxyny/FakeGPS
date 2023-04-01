import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FakeLocationPage(),
    );
  }
}

class FakeLocationPage extends StatefulWidget {
  @override
  _FakeLocationPageState createState() => _FakeLocationPageState();
}

class _FakeLocationPageState extends State<FakeLocationPage> {
  Location _location = Location();

  Future<void> _requestPermissions() async {
    await Permission.location.request();
  }

  Future<void> _setFakeLocation(double latitude, double longitude) async {
    // Cette méthode n'existe pas dans les bibliothèques mentionnées.
    // Vous devrez créer un moyen de falsifier la position à partir de cette méthode.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fausser la localisation GPS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _requestPermissions,
              child: Text('Demander les autorisations'),
            ),
            ElevatedButton(
              onPressed: () {
                _setFakeLocation(
                    48.8566, 2.3522); // Coordonnées de Paris, France
              },
              child: Text('Fausser la localisation'),
            ),
          ],
        ),
      ),
    );
  }
}
