import 'package:json_annotation/json_annotation.dart';

part 'search_request_dto.g.dart';

@JsonSerializable(
  nullable: false,
  createFactory: false,
)
class SearchRequestDto {
  final String size;

  final int limit;

  final String format;

  SearchRequestDto({
    this.size,
    this.limit,
    this.format,
  });

  Map<String, Object> toJson() => _$SearchRequestDtoToJson(this);
}
