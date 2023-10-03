// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// const LatLng currentLocation = LatLng(-8.409518, 115.188919);

// class MapsPage extends StatefulWidget {
//   const MapsPage({Key? key}) : super(key: key);

//   @override
//   State<MapsPage> createState() => _MapsPageState();
// }

// class _MapsPageState extends State<MapsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: currentLocation,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MapsPage'),
      ),
    );
  }
}
