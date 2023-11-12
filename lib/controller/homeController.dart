// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';

// class Home_controller extends GetxController {
//   FirebaseFirestore db = FirebaseFirestore.instance;
//   List<QuerySnapshot> data = [];

//   getdata() async {
//     QuerySnapshot querySnapshot =
//         await FirebaseFirestore.instance.collection("categories").get();
//     data.addAll(querySnapshot.docs as Iterable<QuerySnapshot<Object?>>);
//   }
// }
