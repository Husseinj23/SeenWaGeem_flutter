import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/subject.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String id,
    required String name,
    required String categoryId,
    String? questionCount,
    String? color,
    String? icon,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);

  factory SubjectModel.fromEntity(Subject subject) {
    return SubjectModel(
      id: subject.id,
      name: subject.name,
      categoryId: subject.categoryId,
      questionCount: subject.questionCount,
      color: subject.color,
      icon: subject.icon,
    );
  }
}

extension SubjectModelExtension on SubjectModel {
  Subject toEntity() {
    return Subject(
      id: id,
      name: name,
      categoryId: categoryId,
      questionCount: questionCount,
      color: color,
      icon: icon,
    );
  }
}
