import '../entities/subject.dart';
import '../repositories/subject_repository.dart';

class GetSubjectsByCategoryUseCase {
  final SubjectRepository repository;

  GetSubjectsByCategoryUseCase(this.repository);

  Future<List<Subject>> call(String categoryId) async {
    return await repository.getSubjectsByCategory(categoryId);
  }
}
