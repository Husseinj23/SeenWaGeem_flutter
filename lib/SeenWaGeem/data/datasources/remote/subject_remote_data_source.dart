import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/subject_model.dart';

abstract class SubjectRemoteDataSource {
  Future<List<SubjectModel>> getSubjects();
  Future<List<SubjectModel>> getSubjectsByCategory(String categoryId);
  Future<SubjectModel> getSubjectById(String subjectId);
  Future<List<SubjectModel>> getTopSubjects(int limit);
}

class SubjectRemoteDataSourceImpl implements SubjectRemoteDataSource {
  final http.Client client;

  SubjectRemoteDataSourceImpl({
    required this.client,
  });

  static const String baseUrl = 'https://appswg.com/app';

  @override
  Future<List<SubjectModel>> getSubjects() async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/subjects'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => SubjectModel.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<SubjectModel>> getSubjectsByCategory(String categoryId) async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/subjects/category/$categoryId'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => SubjectModel.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  @override
  Future<SubjectModel> getSubjectById(String subjectId) async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/subjects/$subjectId'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        return SubjectModel.fromJson(json);
      } else {
        return SubjectModel(
          id: subjectId,
          name: 'Unknown Subject',
          categoryId: '',
        );
      }
    } catch (e) {
      return SubjectModel(
        id: subjectId,
        name: 'Unknown Subject',
        categoryId: '',
      );
    }
  }

  @override
  Future<List<SubjectModel>> getTopSubjects(int limit) async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/subjects/top/$limit'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => SubjectModel.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
