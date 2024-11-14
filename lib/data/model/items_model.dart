class ItemsModel {
  String? itemId;
  String? itemName;
  String? itemNameAr;
  String? itemDescription;
  String? itemDescriptionAr;
  String? itemImage;
  String? itemCount;
  String? itemActive;
  String? itemPrice;
  String? itemDiscount;
  String? itemDate;
  String? itemCategoryId;
  String? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryDescription;
  String? categoryImage;
  String? categoryDatetime;
  String? favorite;

  ItemsModel(
      {this.itemId,
      this.itemName,
      this.itemNameAr,
      this.itemDescription,
      this.itemDescriptionAr,
      this.itemImage,
      this.itemCount,
      this.itemActive,
      this.itemPrice,
      this.itemDiscount,
      this.itemDate,
      this.itemCategoryId,
      this.categoryId,
      this.categoryName,
      this.categoryNameAr,
      this.categoryDescription,
      this.categoryImage,
      this.categoryDatetime,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemName = json['item_name'];
    itemNameAr = json['item_name_ar'];
    itemDescription = json['item_description'];
    itemDescriptionAr = json['item_description_ar'];
    itemImage = json['item_image'];
    itemCount = json['item_count'];
    itemActive = json['item_active'];
    itemPrice = json['item_price'];
    itemDiscount = json['item_discount'];
    itemDate = json['item_date'];
    itemCategoryId = json['item_category_id'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryNameAr = json['category_name_ar'];
    categoryDescription = json['category_description'];
    categoryImage = json['category_image'];
    categoryDatetime = json['category_datetime'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['item_name_ar'] = this.itemNameAr;
    data['item_description'] = this.itemDescription;
    data['item_description_ar'] = this.itemDescriptionAr;
    data['item_image'] = this.itemImage;
    data['item_count'] = this.itemCount;
    data['item_active'] = this.itemActive;
    data['item_price'] = this.itemPrice;
    data['item_discount'] = this.itemDiscount;
    data['item_date'] = this.itemDate;
    data['item_category_id'] = this.itemCategoryId;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['category_name_ar'] = this.categoryNameAr;
    data['category_description'] = this.categoryDescription;
    data['category_image'] = this.categoryImage;
    data['category_datetime'] = this.categoryDatetime;
    data['favorite'] = this.favorite;
    return data;
  }
}
