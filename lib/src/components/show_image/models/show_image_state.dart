import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:show_random_cats/src/models/image.dart';

part 'show_image_state.g.dart';

abstract class ShowImageState
    implements Built<ShowImageState, ShowImageStateBuilder> {
  factory ShowImageState([void Function(ShowImageStateBuilder) updates]) =
      _$ShowImageState;
  ShowImageState._();

  BuiltList<Image> get images;

  @nullable
  Image get currentShowingImage;

  bool get isLoadingInitialData;

  int get counterShowedImages;

  static void _initializeBuilder(ShowImageStateBuilder builder) => builder
    ..isLoadingInitialData = false
    ..counterShowedImages = 0
    ..images = ListBuilder();
}
