import '../../domain/entities/subject.dart';
import '../../domain/repositories/subject_repository.dart';
import '../datasources/remote/subject_remote_data_source.dart';
import '../models/subject_model.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final SubjectRemoteDataSource remoteDataSource;

  SubjectRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Subject>> getSubjects() async {
    try {
      final subjectModels = await remoteDataSource.getSubjects();
      return subjectModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Subject>> getSubjectsByCategory(String categoryId) async {
    try {
      final subjectModels = await remoteDataSource.getSubjectsByCategory(categoryId);
      return subjectModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<Subject> getSubjectById(String subjectId) async {
    try {
      final subjectModel = await remoteDataSource.getSubjectById(subjectId);
      return subjectModel.toEntity();
    } catch (e) {
      return Subject(
        id: subjectId,
        name: 'Unknown Subject',
        categoryId: '',
      );
    }
  }

  @override
  Future<List<Subject>> getTopSubjects(int limit) async {
    try {
      final subjectModels = await remoteDataSource.getTopSubjects(limit);
      return subjectModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      return [];
    }
  }
}
