class Authority {
  final int id;
  final String stringId;
  final bool active;
  final String dateCreated;
  final String dateUpdated;
  final int updatedBy;
  final int createdBy;
  final String roleName;
  final String roleDescription;
  final String authorityCode;
  final bool visible;

  Authority({
    required this.id,
    required this.stringId,
    required this.active,
    required this.dateCreated,
    required this.dateUpdated,
    required this.updatedBy,
    required this.createdBy,
    required this.roleName,
    required this.roleDescription,
    required this.authorityCode,
    required this.visible,
  });

  factory Authority.fromJson(Map<String, dynamic> json) {
    return Authority(
      id: json['id'] as int,
      stringId: json['stringId'] as String,
      active: json['active'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
      updatedBy: json['updatedBy'] as int,
      createdBy: json['createdBy'] as int,
      roleName: json['roleName'] as String,
      roleDescription: json['roleDescription'] as String,
      authorityCode: json['authorityCode'] as String,
      visible: json['visible'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'stringId': stringId,
      'active': active,
      'dateCreated': dateCreated,
      'dateUpdated': dateUpdated,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
      'roleName': roleName,
      'roleDescription': roleDescription,
      'authorityCode': authorityCode,
      'visible': visible,
    };
  }


}