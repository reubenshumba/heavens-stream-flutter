import 'package:flutter/cupertino.dart';

class ApiResponse<T> {
  final int statusCode;
  final String message;
  final bool success;
  final ApiResponseData<T> data;

  ApiResponse({
    required this.statusCode,
    required this.message,
    required this.success,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonData) {
    return ApiResponse<T>(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      success: json['success'] as bool,
      data: ApiResponseData.fromJson(json['data'], fromJsonData),
    );
  }
}

class ApiResponseData<T> {
  final List<T> content;
  final Pageable pageable;
  final bool last;
  final int totalElements;
  final int totalPages;
  final int size;
  final int number;
  final Sort sort;
  final bool first;
  final int numberOfElements;
  final bool empty;

  ApiResponseData({
    required this.content,
    required this.pageable,
    required this.last,
    required this.totalElements,
    required this.totalPages,
    required this.size,
    required this.number,
    required this.sort,
    required this.first,
    required this.numberOfElements,
    required this.empty,
  });

  factory ApiResponseData.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) fromJsonItem) {

    final List<dynamic> contentJson = json['content'];

    final List<T> content = contentJson.map((json) => fromJsonItem(json)).toList() ?? [];

    return ApiResponseData(
      content: content,
      pageable: Pageable.fromJson(json['pageable']),
      last: json['last'] as bool,
      totalElements: json['totalElements'] as int,
      totalPages: json['totalPages'] as int,
      size: json['size'] as int,
      number: json['number'] as int,
      sort: Sort.fromJson(json['sort']),
      first: json['first'] as bool,
      numberOfElements: json['numberOfElements'] as int,
      empty: json['empty'] as bool,
    );
  }

}

class Pageable {
  final Sort sort;
  final int offset;
  final int pageNumber;
  final int pageSize;
  final bool unpaged;
  final bool paged;

  Pageable({
    required this.sort,
    required this.offset,
    required this.pageNumber,
    required this.pageSize,
    required this.unpaged,
    required this.paged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return Pageable(
      sort: Sort.fromJson(json['sort']),
      offset: json['offset'] as int,
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      unpaged: json['unpaged'] as bool,
      paged: json['paged'] as bool,
    );
  }
}

class Sort {
  final bool empty;
  final bool sorted;
  final bool unsorted;

  Sort({
    required this.empty,
    required this.sorted,
    required this.unsorted,
  });

  factory Sort.fromJson(Map<String, dynamic> json) {
    return Sort(
      empty: json['empty'] as bool,
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
    );
  }
}
