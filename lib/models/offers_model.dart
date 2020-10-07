class OffersModel {
  String header;
  String content;
  String image;
  String offers;
  dynamic background;

  OffersModel({this.header, this.content, this.image, this.background, this.offers});

  OffersModel.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    content = json['content'];
    image = json['image'];
    background = json['background'];
    offers = json['offers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['content'] = this.content;
    data['image'] = this.image;
    data['background'] = this.background;
    data['offers'] = this.offers;
    return data;
  }
}