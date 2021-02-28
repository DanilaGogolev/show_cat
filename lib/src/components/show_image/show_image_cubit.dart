import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:show_random_cats/src/components/show_image/models/show_image_state.dart';
import 'package:show_random_cats/src/constans/constans.dart';
import 'package:show_random_cats/src/models/image.dart';
import 'package:show_random_cats/src/services/api/api_service.dart';
import 'package:show_random_cats/src/services/converters.dart';

class ShowImageCubit extends Cubit<ShowImageState> {
  final ApiService _apiService;

  ShowImageCubit()
      : _apiService = ApiService(),
        super(ShowImageState()) {
    _loadingInitialData();
  }

  void _loadingInitialData() {
    emit(
      state.rebuild((b) {
        b.isLoadingInitialData = true;
      }),
    );

    _apiService.getImages().then((dto) {
      emit(state.rebuild((b) {
        final images = BuiltList<Image>(dto.map(catFromDto));

        b
          ..counterShowedImages = 0
          ..isLoadingInitialData = false
          ..images = images.toBuilder()
          ..currentShowingImage = images[state.counterShowedImages].toBuilder();
      }));
    });
  }

  void showNewCat() {
    state.counterShowedImages != limitLoadingData
        ? emit(state.rebuild((b) {
            final newCounterShowedImages = ++b.counterShowedImages;
            b
              ..currentShowingImage =
                  state.images[newCounterShowedImages].toBuilder()
              ..counterShowedImages = newCounterShowedImages;
          }))
        : _loadingInitialData();
  }
}
