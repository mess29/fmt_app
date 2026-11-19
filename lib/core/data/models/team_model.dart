// ignore_for_file: public_member_api_docs, sort_constructors_first
class Team {
  String name;
  String type; // "club" veya "national"

  Team({required this.name, required this.type});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      name: json['name'],
      type: json['type'],
    );
  }
}
