import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference _Collection =
    FirebaseFirestore.instance.collection("users");

class Update {
  static Future update({
    required String groub,
    required String docId,
  }) async {
    DocumentReference documentReferencer = _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "userType": groub,
    };

    await documentReferencer.update(data);
  }
}
