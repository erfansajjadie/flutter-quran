class Translation {
  int? id;
  int? resourceId;
  String? text;

  Translation({this.id, this.resourceId, this.text});

  Translation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceId = json['resource_id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['resource_id'] = resourceId;
    data['text'] = text;
    return data;
  }
}
