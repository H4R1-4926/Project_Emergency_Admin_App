import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:emergency_admin_app/Domain/Completed/completed_data_model/completed_data_model.dart';

import 'package:emergency_admin_app/Domain/Sos/i_sos_repo.dart';
import 'package:emergency_admin_app/Domain/Sos/model/sos_model/sos_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISosRepo)
class SosController implements ISosRepo {
  @override
  Future<void> deleteDoc(String id) async {
    try {
      final doc = FirebaseFirestore.instance.collection('sos').doc(id);
      await doc.delete();
    } catch (e) {
      log('err in: $e');
    }
  }

  @override
  Future<void> completedDoc(String id, String completed, String reason,
      String secondaryPhone, String email) async {
    try {
      final userSnapshot =
          await FirebaseFirestore.instance.collection('sos').doc(id).get();
      final result = userSnapshot.data()!;
      SosModel details = SosModel.fromJson(result);
      final newDetails = CompletedDataModel(
          name: details.name,
          location: details.location,
          date: details.date,
          phone: details.phone,
          completed: completed,
          reason: reason,
          email: email,
          storedDate: DateTime.now().toString(),
          secondaryPhone: secondaryPhone);
      await FirebaseFirestore.instance
          .collection('completed_sos')
          .add(newDetails.toJson());
      log('success');
    } catch (e) {
      log('Unsuccess  err in: $e');
    }
  }
}
