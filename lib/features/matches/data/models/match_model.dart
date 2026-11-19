class Match {
  final String id;
  final String date;
  final String homeTeam;
  final String awayTeam;
  final String league;
  final String score;

  Match({
    required this.id,
    required this.date,
    required this.homeTeam,
    required this.awayTeam,
    required this.league,
    required this.score,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      id: json['id'],
      date: json['date'],
      homeTeam: json['home_team'],
      awayTeam: json['away_team'],
      league: json['league'],
      score: json['score'] ?? "Belirlenmedi",
    );
  }
}
