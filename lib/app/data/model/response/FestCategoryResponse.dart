/// id : "1"
/// category : "Independence Day"
/// is_gallery : "0"

class FestCategoryResponse {
  FestCategoryResponse({
      String? id, 
      String? category, 
      String? isGallery,}){
    _id = id;
    _category = category;
    _isGallery = isGallery;
}

  FestCategoryResponse.fromJson(dynamic json) {
    _id = json['id'];
    _category = json['category'];
    _isGallery = json['is_gallery'];
  }
  String? _id;
  String? _category;
  String? _isGallery;
FestCategoryResponse copyWith({  String? id,
  String? category,
  String? isGallery,
}) => FestCategoryResponse(  id: id ?? _id,
  category: category ?? _category,
  isGallery: isGallery ?? _isGallery,
);
  String? get id => _id;
  String? get category => _category;
  String? get isGallery => _isGallery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category'] = _category;
    map['is_gallery'] = _isGallery;
    return map;
  }

}