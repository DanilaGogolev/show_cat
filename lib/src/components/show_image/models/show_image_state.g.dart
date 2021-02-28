// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_image_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowImageState extends ShowImageState {
  @override
  final BuiltList<Image> images;
  @override
  final Image currentShowingImage;
  @override
  final bool isLoadingInitialData;
  @override
  final int counterShowedImages;

  factory _$ShowImageState([void Function(ShowImageStateBuilder) updates]) =>
      (new ShowImageStateBuilder()..update(updates)).build();

  _$ShowImageState._(
      {this.images,
      this.currentShowingImage,
      this.isLoadingInitialData,
      this.counterShowedImages})
      : super._() {
    if (images == null) {
      throw new BuiltValueNullFieldError('ShowImageState', 'images');
    }
    if (isLoadingInitialData == null) {
      throw new BuiltValueNullFieldError(
          'ShowImageState', 'isLoadingInitialData');
    }
    if (counterShowedImages == null) {
      throw new BuiltValueNullFieldError(
          'ShowImageState', 'counterShowedImages');
    }
  }

  @override
  ShowImageState rebuild(void Function(ShowImageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowImageStateBuilder toBuilder() =>
      new ShowImageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowImageState &&
        images == other.images &&
        currentShowingImage == other.currentShowingImage &&
        isLoadingInitialData == other.isLoadingInitialData &&
        counterShowedImages == other.counterShowedImages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, images.hashCode), currentShowingImage.hashCode),
            isLoadingInitialData.hashCode),
        counterShowedImages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowImageState')
          ..add('images', images)
          ..add('currentShowingImage', currentShowingImage)
          ..add('isLoadingInitialData', isLoadingInitialData)
          ..add('counterShowedImages', counterShowedImages))
        .toString();
  }
}

class ShowImageStateBuilder
    implements Builder<ShowImageState, ShowImageStateBuilder> {
  _$ShowImageState _$v;

  ListBuilder<Image> _images;
  ListBuilder<Image> get images => _$this._images ??= new ListBuilder<Image>();
  set images(ListBuilder<Image> images) => _$this._images = images;

  ImageBuilder _currentShowingImage;
  ImageBuilder get currentShowingImage =>
      _$this._currentShowingImage ??= new ImageBuilder();
  set currentShowingImage(ImageBuilder currentShowingImage) =>
      _$this._currentShowingImage = currentShowingImage;

  bool _isLoadingInitialData;
  bool get isLoadingInitialData => _$this._isLoadingInitialData;
  set isLoadingInitialData(bool isLoadingInitialData) =>
      _$this._isLoadingInitialData = isLoadingInitialData;

  int _counterShowedImages;
  int get counterShowedImages => _$this._counterShowedImages;
  set counterShowedImages(int counterShowedImages) =>
      _$this._counterShowedImages = counterShowedImages;

  ShowImageStateBuilder() {
    ShowImageState._initializeBuilder(this);
  }

  ShowImageStateBuilder get _$this {
    if (_$v != null) {
      _images = _$v.images?.toBuilder();
      _currentShowingImage = _$v.currentShowingImage?.toBuilder();
      _isLoadingInitialData = _$v.isLoadingInitialData;
      _counterShowedImages = _$v.counterShowedImages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowImageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShowImageState;
  }

  @override
  void update(void Function(ShowImageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowImageState build() {
    _$ShowImageState _$result;
    try {
      _$result = _$v ??
          new _$ShowImageState._(
              images: images.build(),
              currentShowingImage: _currentShowingImage?.build(),
              isLoadingInitialData: isLoadingInitialData,
              counterShowedImages: counterShowedImages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
        _$failedField = 'currentShowingImage';
        _currentShowingImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShowImageState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
