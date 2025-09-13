import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

class StringOrIntConverter implements JsonConverter<String?, dynamic> {
  const StringOrIntConverter();

  @override
  String? fromJson(dynamic json) {
    if (json == null) return null;
    return json.toString();
  }

  @override
  dynamic toJson(String? object) => object;
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    @StringOrIntConverter() String? questionCount,
    String? color,
    String? incentivePhrase,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
