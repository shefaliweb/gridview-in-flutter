import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GridView Demo"),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(10, (index) => _myCardItem(context)),
        ),
      ),
    ));
  }
}

// Widget _myCardItem(BuildContext context){
//   return
//     Center(
//       child: Card(
//
//         child: Container(
//           // width: MediaQuery.of(context).size.width,
//           // height: 10;
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/2.jpg"),
//               fit: BoxFit.fill,
//               alignment: Alignment.topCenter,
//             ),
//           ),
//           child: Text("YOUR TEXT"),
//         ),
//       ),
//     );
// }
Widget _myCardItem(BuildContext context) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Container(
      child: const Center(
          child: Text(
        "Price 200.00",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          )
        ],
        image: const DecorationImage(
          image: AssetImage("assets/images/2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
