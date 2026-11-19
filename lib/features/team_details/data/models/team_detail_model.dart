class TeamDetailModel {
  final String id;
  final String name;
  final String logo;
  final String stadium;
  final String coach;
  final String founded;
  final List<Match> matches;
  final List<Player> players;

  TeamDetailModel({
    required this.id,
    required this.name,
    required this.logo,
    required this.stadium,
    required this.coach,
    required this.founded,
    required this.matches,
    required this.players,
  });

  factory TeamDetailModel.fromJson(Map<String, dynamic> json) {
    return TeamDetailModel(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
      stadium: json['stadium'],
      coach: json['coach'],
      founded: json['founded'],
      matches: (json['matches'] as List).map((m) => Match.fromJson(m)).toList(),
      players:
          (json['players'] as List).map((p) => Player.fromJson(p)).toList(),
    );
  }
}

class Match {
  final String date;
  final String time;
  final String homeTeam;
  final String awayTeam;
  final String league;
  final String score;

  Match({
    required this.date,
    required this.time,
    required this.homeTeam,
    required this.awayTeam,
    required this.league,
    required this.score,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      date: json['date'],
      time: json['time'],
      homeTeam: json['homeTeam'],
      awayTeam: json['awayTeam'],
      league: json['league'],
      score: json['score'],
    );
  }
}

class Player {
  final String name;
  final String position;
  final String nationality;
  final String photo;

  Player({
    required this.name,
    required this.position,
    required this.nationality,
    required this.photo,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      name: json['name'],
      position: json['position'],
      nationality: json['nationality'],
      photo: json['photo'],
    );
  }
}
