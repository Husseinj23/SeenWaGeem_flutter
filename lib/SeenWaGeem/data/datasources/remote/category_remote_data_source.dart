import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:seen_wa_geem_flutter/SeenWaGeem/data/models/category_model.dart';

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
    final List<dynamic> data = response.data;
    return data.map((json) {
      // Transform the API response to match our model structure
      final categoryData = json['category'] as Map<String, dynamic>;
      return CategoryModel.fromJson({
        'id': categoryData['id'],
        'name': categoryData['name'],
        'questionCount': json['numberOfSubjects'].toString(), // Convert numberOfSubjects to questionCount
        'color': null, // API doesn't provide color, we'll use default
        'incentivePhrase': json['incentivePhrase'],
      });
    }).toList();
  }
}
