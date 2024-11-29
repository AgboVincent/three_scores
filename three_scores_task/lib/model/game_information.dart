




class MatchEvents {
  String? playerName;
  String? playerImage;
  String? action;
  bool? isHomeTeam;
  bool? isSubstitution;
  String? actionIcon;
  String? time;
  String? playerOff;
  String? playerOn;

  MatchEvents({
    this.playerName,
    this.playerImage,
    this.action,
    this.isHomeTeam,
    this.isSubstitution,
    this.actionIcon,
    this.time,
    this.playerOff,
    this.playerOn
  });

  MatchEvents.fromJson(Map<String, dynamic> json) {
    playerName = json['playerName'] as String;
    playerImage = json['playerImage'] as String;
    action = json['action'] as String;
    isHomeTeam = json['isHomeTeam'] as bool;
    isSubstitution = json['isSubstitution'] as bool;
    actionIcon = json['actionIcon'] as String;
    time = json['time'] as String;
    playerOff = json['playerOff'] as String;
    playerOn = json['playerOn'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['playerName'] = playerName;
    data['playerImage'] = playerImage;
    data['action'] = action;
    data['isHomeTeam'] = isHomeTeam;
    data['isSubstitution'] = isSubstitution;
    data['actionIcon'] = actionIcon;
    data['time'] = time;
     data['playerOff'] = playerOff;
    data['playerOn'] = playerOn;
    return data;
  }

}