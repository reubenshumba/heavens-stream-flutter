
class ApiHeavensResponse {
  final int statusCode;
  final String message;
  final bool success;
  final ApiHeavensResponseData data;

  ApiHeavensResponse({
    required this.statusCode,
    required this.message,
    required this.success,
    required this.data,
  });

  factory ApiHeavensResponse.fromJson(
      Map<String, dynamic> json) {
    return ApiHeavensResponse(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      success: json['success'] as bool,
      data: ApiHeavensResponseData.fromJson(json['data']),
    );
  }
}

class ApiHeavensResponseData {
  final List<HeavenModel> content;
  final PageableModel pageable;
  final bool last;
  final int totalElements;
  final int totalPages;
  final int size;
  final int number;
  final SortModel sort;
  final bool first;
  final int numberOfElements;
  final bool empty;

  ApiHeavensResponseData({
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

  factory ApiHeavensResponseData.fromJson(
      Map<String, dynamic> json) {
    final List<dynamic> contentJson = json['content'];
    final List<HeavenModel> content =
    contentJson.map((json) => HeavenModel.fromJson(json)).toList();

    return ApiHeavensResponseData(
      content: content,
      pageable: PageableModel.fromJson(json['pageable']),
      last: json['last'] as bool,
      totalElements: json['totalElements'] as int,
      totalPages: json['totalPages'] as int,
      size: json['size'] as int,
      number: json['number'] as int,
      sort: SortModel.fromJson(json['sort']),
      first: json['first'] as bool,
      numberOfElements: json['numberOfElements'] as int,
      empty: json['empty'] as bool,
    );
  }
}

class HeavenModel {
  final String stringId;
  final bool active;
  final DateTime dateCreated;
  final DateTime dateUpdated;
  final int updatedBy;
  final int createdBy;
  final int id;
  final String heavenName;
  final String heavenDescription;
  final String imageUrl;
  final int heavenOwn;

  HeavenModel({
    required this.stringId,
    required this.active,
    required this.dateCreated,
    required this.dateUpdated,
    required this.updatedBy,
    required this.createdBy,
    required this.id,
    required this.heavenName,
    required this.heavenDescription,
    required this.imageUrl,
    required this.heavenOwn,
  });

  factory HeavenModel.fromJson(Map<String, dynamic> json) {
    return HeavenModel(
      stringId: json['stringId'] as String,
      active: json['active'] as bool,
      dateCreated: DateTime.parse(json['dateCreated']),
      dateUpdated: DateTime.parse(json['dateUpdated']),
      updatedBy: json['updatedBy'] as int,
      createdBy: json['createdBy'] as int,
      id: json['id'] as int,
      heavenName: json['heavenName'] as String,
      heavenDescription: json['heavenDescription'] as String,
      imageUrl: json['imageUrl'] as String,
      heavenOwn: json['heavenOwn'] as int,
    );
  }
}

class PageableModel {
  final SortModel sort;
  final int offset;
  final int pageNumber;
  final int pageSize;
  final bool unpaged;
  final bool paged;

  PageableModel({
    required this.sort,
    required this.offset,
    required this.pageNumber,
    required this.pageSize,
    required this.unpaged,
    required this.paged,
  });

  factory PageableModel.fromJson(Map<String, dynamic> json) {
    return PageableModel(
      sort: SortModel.fromJson(json['sort']),
      offset: json['offset'] as int,
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      unpaged: json['unpaged'] as bool,
      paged: json['paged'] as bool,
    );
  }
}

class SortModel {
  final bool empty;
  final bool sorted;
  final bool unsorted;

  SortModel({
    required this.empty,
    required this.sorted,
    required this.unsorted,
  });

  factory SortModel.fromJson(Map<String, dynamic> json) {
    return SortModel(
      empty: json['empty'] as bool,
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
    );
  }
}
