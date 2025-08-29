import 'package:injectable/injectable.dart';

import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';

@injectable
class GetTopCategoriesUseCase {
  final CategoryRepository _repository;

  GetTopCategoriesUseCase(this._repository);

  Future<List<Category>> call() {
    return _repository.getTopCategories();
  }
}
