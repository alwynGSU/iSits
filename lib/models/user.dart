import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String email;
  final String name;
  //final String image;
  //Timestamp date;
  String uid;

  UserModel({
    required this.email,
    required this.name,
    //required this.image,
    //required this.date,
    required this.uid,
  });

  factory UserModel.fromJson(DocumentSnapshot snapshot) {
    return UserModel(
      email: snapshot['email'],
      name: snapshot['name'],
      //image: snapshot['image'],
      //date: snapshot['date'],
      uid: snapshot['uid'],
    );
  }
}
