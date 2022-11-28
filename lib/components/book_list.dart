import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  final String title;
  final String keyword;
  final String writer;
  final String bookcover;
  final bool taken;
  final DocumentReference reference;

  Book.fromMap(Map<String, dynamic> map, {required this.reference})
      : keyword = map['keyword'],
        bookcover = map['bookcover'],
        title = map['title'],
        writer = map['writer'],
        taken = map['taken'];

  Book.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
      reference: snapshot.reference);

  /*Book.fromMap(Map<String, dynamic> map, {this.reference})
  : keyword = map['keyword'],
        bookcover = map['bookcover'],
        title = map['title'],
        writer = map['writer'],
        taken = map['taken'];

  Book.fromSnapshot(DocumentSnapshot snapshot)
  : this.fromMap(snapshot.data, reference: snapshot.reference)*/

  @override
  String toString() => 'Book<$title:$keyword>';
}