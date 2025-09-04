import 'package:injectable/injectable.dart';

import '../../data/datasources/remote/image_remote_data_source.dart';
import '../../domain/repositories/image_repository.dart';

@LazySingleton(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageRemoteDataSource _remoteDataSource;

  ImageRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<String>> getAvatars() async {
    return await _remoteDataSource.getAvatars();
  }

  @override
  Future<void> updateAvatar(String avatarUrl) async {
    return await _remoteDataSource.updateAvatar(avatarUrl);
  }
}
