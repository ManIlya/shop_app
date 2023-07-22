import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_dto.freezed.dart';

part 'categories_dto.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    String? picture,
    @JsonKey(name: "parent_id") int? parentId,
    List<Category>? subcategories,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
