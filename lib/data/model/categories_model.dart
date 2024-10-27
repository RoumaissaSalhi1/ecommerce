class CategoriesModel {
  String? id;
  String? name;
  String? nameAr;
  String? description;
  String? image;
  String? datetime;

  CategoriesModel(
      {this.id,
      this.name,
      this.nameAr,
      this.description,
      this.image,
      this.datetime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['name_ar'];
    description = json['description'];
    image = json['image'];
    datetime = json['datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['description'] = this.description;
    data['image'] = this.image;
    data['datetime'] = this.datetime;
    return data;
  }
}
