import 'package:show_random_cats/src/models/image.dart';
import 'package:show_random_cats/src/services/api/models/image_dto.dart';

Image catFromDto(ImageDto dto) => Image((b) {
      b.url = dto.url;
    });
