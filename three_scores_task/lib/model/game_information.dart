




class MatchEvents {
  final String playerName;
  final String playerImage;
  final String? action;
  final bool? isHomeTeam;
  final bool? isSubstitution;
  final String actionIcon;
  final String time;
  final String? playerOff;
  final String? playerOn;

  MatchEvents({
    required this.playerName,
    required this.playerImage,
    this.action,
    this.isHomeTeam,
    this.isSubstitution,
    required this.actionIcon,
    required this.time,
    this.playerOff,
    this.playerOn
  });

}