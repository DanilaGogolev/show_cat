import 'dart:async';

import 'package:dio/dio.dart';
import 'package:show_random_cats/src/constans/constans.dart';
import 'package:show_random_cats/src/services/api/models/image_dto.dart';
import 'package:show_random_cats/src/services/api/models/search_request_dto.dart';

class ApiService {
  static const _apiKey = '0cd509ca-33f0-4c78-aa50-afcf7d463217';

  final Dio _dio;

  ApiService()
      : _dio = Dio()
          ..options.baseUrl = 'https://api.thecatapi.com'
          ..options.headers = {'x-api-key': _apiKey};

  Future<Iterable<ImageDto>> getImages() async {
    final response = await _dio.get('/v1/images/search',
        queryParameters: SearchRequestDto(
                size: 'full', limit: limitLoadingData, format: 'json')
            .toJson());

    return (response.data as List<Object>)
        .map((json) => ImageDto.fromJson(json));
  }
}
