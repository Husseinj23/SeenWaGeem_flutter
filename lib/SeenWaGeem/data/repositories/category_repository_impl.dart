import 'package:injectable/injectable.dart';

import '../../data/datasources/remote/category_remote_data_source.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource _remoteDataSource;

  CategoryRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Category>> getTopCategories() async {
    final categoryModels = await _remoteDataSource.getTopCategories();
    return categoryModels
        .map(
          (model) => Category(
            id: model.id,
            name: model.name,
            questionCount: model.questionCount,
            color: model.color,
          ),
        )
        .whereType<Category>()
        .toList();
  }
}
