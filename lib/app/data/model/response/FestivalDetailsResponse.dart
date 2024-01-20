/// id : "4"
/// title : "75th Independence Day celebrations"
/// image : "uploads/gallery/image_2eds7654wr1ty0u3kh89jfg.jpeg"
/// category_id : "1"
/// description : "<p>???????? ???????????????????? celebrating its ???????? ???????????????????? ???????? ????????????????????????????????????????????????. Resonance Hyderabad centres celebrated and ???????????????????????????? ????????????????????&#39;???? ????????????????????????????, ????????????????????????????????, and ????????????????????????????????????????????????.</p>\r\n\r\n<p>On 15th Aug, we celebrated the occasion by flag hoisting and with many more events.</p>\r\n"
/// year : "2023"
/// active : "Yes"

class FestivalDetailsResponse {
  FestivalDetailsResponse({
      String? id, 
      String? title, 
      String? image, 
      String? categoryId, 
      String? description, 
      String? year, 
      String? active,}){
    _id = id;
    _title = title;
    _image = image;
    _categoryId = categoryId;
    _description = description;
    _year = year;
    _active = active;
}

  FestivalDetailsResponse.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image = json['image'];
    _categoryId = json['category_id'];
    _description = json['description'];
    _year = json['year'];
    _active = json['active'];
  }
  String? _id;
  String? _title;
  String? _image;
  String? _categoryId;
  String? _description;
  String? _year;
  String? _active;
FestivalDetailsResponse copyWith({  String? id,
  String? title,
  String? image,
  String? categoryId,
  String? description,
  String? year,
  String? active,
}) => FestivalDetailsResponse(  id: id ?? _id,
  title: title ?? _title,
  image: image ?? _image,
  categoryId: categoryId ?? _categoryId,
  description: description ?? _description,
  year: year ?? _year,
  active: active ?? _active,
);
  String? get id => _id;
  String? get title => _title;
  String? get image => _image;
  String? get categoryId => _categoryId;
  String? get description => _description;
  String? get year => _year;
  String? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    map['category_id'] = _categoryId;
    map['description'] = _description;
    map['year'] = _year;
    map['active'] = _active;
    return map;
  }

}