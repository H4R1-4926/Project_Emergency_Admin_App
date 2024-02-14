import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:emergency_admin_app/Domain/Completed/completed_data_model/completed_data_model.dart';
import 'package:emergency_admin_app/Domain/Emergency/i_emergency_repo.dart';
import 'package:emergency_admin_app/Domain/Emergency/model/emergency_model/emergency_model.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmergencyRepo)
class EmergencyController implements IEmergencyRepo {
  @override
  Future<void> deleteDoc(String id) async {
    try {
      final doc = FirebaseFirestore.instance.collection('emergency').doc(id);
      await doc.delete();
    } catch (e) {
      log('err in: $e');
    }
  }

  @override
  Future<void> completedDoc(String id, String completed, String reason,
      String secondaryPhone, String email) async {
    try {
      final userSnapshot = await FirebaseFirestore.instance
          .collection('emergency')
          .doc(id)
          .get();
      final result = userSnapshot.data()!;
      EmergencyModel details = EmergencyModel.fromJson(result);
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
          .collection('completed_emergency')
          .add(newDetails.toJson());
      log('success');
    } catch (e) {
      log('Unsuccess  err in: $e');
    }
  }
}
