import 'package:built_value/built_value.dart';

part 'image.g.dart';

abstract class Image implements Built<Image, ImageBuilder> {
  String get url;

  Image._();
  factory Image([void Function(ImageBuilder) updates]) = _$Image;
}
