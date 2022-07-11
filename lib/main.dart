import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.08574965515137),
    zoom: 14,
  );
  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    zoom: 14,
  );
  static const CameraPosition _kNewYork = CameraPosition(
    target: LatLng(40.7128, -74.0060),
  );
  static const CameraPosition _kSydney = CameraPosition(
    target: LatLng(-33.852, 151.211),
  );

  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: idx,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "1"),
              Tab(text: "2"),
              Tab(text: "3"),
              Tab(text: "4"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GoogleMap(initialCameraPosition: _kGooglePlex),
            GoogleMap(initialCameraPosition: _kLake),
            GoogleMap(initialCameraPosition: _kNewYork),
            GoogleMap(initialCameraPosition: _kSydney),
          ],
        ),
      ),
    );
  }
}
