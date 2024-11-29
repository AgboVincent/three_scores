



class Momentum {
  int? minute;
  int? value;
 
  Momentum({
    this.minute,
    this.value,
  });


  Momentum.fromJson(Map<String, dynamic> json) {
    minute = json['minute'] as int;
    value = json['value'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minute'] = minute;
    data['value'] = value;
    return data;
  }


}