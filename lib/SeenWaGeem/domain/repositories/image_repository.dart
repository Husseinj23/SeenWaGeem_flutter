abstract class ImageRepository {
  Future<List<String>> getAvatars();
  Future<void> updateAvatar(String avatarUrl);
}
