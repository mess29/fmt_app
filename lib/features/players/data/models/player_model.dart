class Player {
  final String id;
  final String name;
  final String position;
  final String nationality;
  final String photo;
  final int goals;
  final int assists;

  Player({
    required this.id,
    required this.name,
    required this.position,
    required this.nationality,
    required this.photo,
    required this.goals,
    required this.assists,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      name: json['name'],
      position: json['position'],
      nationality: json['nationality'],
      photo: json['photo'],
      goals: json['goals'] ?? 0,
      assists: json['assists'] ?? 0,
    );
  }
}
