abstract class IPoliceRepo {
  Future<void> deleteDoc(String id);
  Future<void> completedDoc(String id, String completed, String reason,
      String secondaryPhone, String email);
}
