// import 'package:flutter/material.dart';
// import 'package:rental_car/models/rent.dart';
// import 'package:rental_car/services/api.dart';

// class CarDetailPage extends StatelessWidget {
//   final Car car;

//   const CarDetailPage({required this.car, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Car Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 200,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image:
//                         NetworkImage(ApiStatic.host + "/storage/" + car.image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 16, left: 16, bottom: 5),
//               child: Text(
//                 car.name,
//                 style:
//                     const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 16, left: 16, bottom: 5),
//               child: Text(
//                 "Plat : " + car.plat,
//                 style:
//                     const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const Divider(),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 car.description,
//                 style: const TextStyle(fontSize: 16),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 16, left: 16),
//               child: Text(
//                 "Status: ${car.status.toString()}",
//                 style:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const Divider(),
//             Padding(
//               padding: const EdgeInsets.only(right: 16, left: 16),
//               child: Text(
//                 "Price: ${car.price.toString()}",
//                 style:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
