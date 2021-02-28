import 'package:json_annotation/json_annotation.dart';

part 'image_dto.g.dart';

@JsonSerializable(
  nullable: false,
  createToJson: false,
)
class ImageDto {
  final String url;

  ImageDto({
    this.url,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}
