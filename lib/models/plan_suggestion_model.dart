class PlanSuggestionModel {
  String header;
  String content;
  String image;
  String playType;
  String thoughts;
  dynamic coverage;

  PlanSuggestionModel(
      {this.header,
      this.content,
      this.image,
      this.playType,
      this.thoughts,
      this.coverage});

  PlanSuggestionModel.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    content = json['content'];
    image = json['image'];
    playType = json['play_type'];
    thoughts = json['thoughts'];
    coverage = json['coverage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['content'] = this.content;
    data['image'] = this.image;
    data['play_type'] = this.playType;
    data['thoughts'] = this.thoughts;
    data['coverage'] = this.coverage;
    return data;
  }
}
