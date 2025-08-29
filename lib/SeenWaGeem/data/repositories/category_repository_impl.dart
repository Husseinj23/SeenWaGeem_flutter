import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getTopCategories();
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Dio _dio;

  CategoryRemoteDataSourceImpl(this._dio);

  @override
  Future<List<CategoryModel>> getTopCategories() async {
    final response = await _dio.get('/categories/top');
    final List<dynamic> data = response.data['data'];
    return data.map((json) => CategoryModel.fromJson(json)).toList();
  }
}
