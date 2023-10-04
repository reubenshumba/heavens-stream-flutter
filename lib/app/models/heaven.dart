import 'authority.dart';

class Heaven {
  final int id;
  final String heavenName;
  final String heavenDescription;
  final String imageUrl;
  final int heavenOwn;
  final List<Authority> authorities;
  final List<Post> posts;
  final bool active;
  final String dateCreated;
  final String dateUpdated;
  final int updatedBy;
  final int createdBy;

  Heaven({
    required this.id,
    required this.heavenName,
    required this.heavenDescription,
    required this.imageUrl,
    required this.heavenOwn,
    required this.authorities,
    required this.posts,
    required this.active,
    required this.dateCreated,
    required this.dateUpdated,
    required this.updatedBy,
    required this.createdBy,
  });

  factory Heaven.fromJson(Map<String, dynamic> json) {
    final List<dynamic> authorityList = json['authorities'];
    final List<dynamic> postList = json['posts'];

    List<Authority> authorities = <Authority>[];
    if (authorityList != null) {
      authorities = authorityList
          .map((authorityJson) => Authority.fromJson(authorityJson))
          .toList();
    }

    List<Post> posts = <Post>[];
    if (postList != null) {
      posts = postList.map((postJson) => Post.fromJson(postJson)).toList();
    }

    //
    // List<Authority> authorities = authorityList
    //     .map((authorityJson) => Authority.fromJson(authorityJson))
    //     .toList();
    //
    // // Handle Post parsing if needed
    // List<Post> posts = postList.map((postJson) => Post.fromJson(postJson)).toList();

    return Heaven(
      id: json['id'] as int,
      heavenName: json['heavenName'] as String,
      heavenDescription: json['heavenDescription'] as String,
      imageUrl: json['imageUrl'] as String,
      heavenOwn: json['heavenOwn'] as int,
      authorities: authorities,
      posts: posts,
      active: json['active'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
      updatedBy: json['updatedBy'] as int,
      createdBy: json['createdBy'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'heavenName': heavenName,
      'heavenDescription': heavenDescription,
      'imageUrl': imageUrl,
      'heavenOwn': heavenOwn,
      'authorities': authorities.map((authority) => authority.toJson()).toList(),
      'posts': null,
      'active': active,
      'dateCreated': dateCreated,
      'dateUpdated': dateUpdated,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
    };
  }
}


class Post {
  // Define properties for Post class if needed

  Post(); // Constructor if needed

  factory Post.fromJson(Map<String, dynamic> json) {
    // Parse properties from JSON and create Post instance

    return Post(/* properties here */);
  }

  Map<String, dynamic> toJson() {
    // Convert properties to a JSON-compatible map

    return {};
  }
}
