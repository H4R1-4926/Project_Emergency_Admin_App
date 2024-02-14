abstract class IUserRepo {
  Future<void> getUser(
    String username,
    String password,
  );
}
