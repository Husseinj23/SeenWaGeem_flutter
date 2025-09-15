import '../entities/subject.dart';

abstract class SubjectRepository {
  Future<List<Subject>> getSubjects();
  Future<List<Subject>> getSubjectsByCategory(String categoryId);
  Future<Subject> getSubjectById(String subjectId);
  Future<List<Subject>> getTopSubjects(int limit);
}
