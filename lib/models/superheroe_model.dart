class Superheroe {
  String name;
  int experience;
  List<String> powers;

  Superheroe({
    required this.name,
    required this.experience,
    required this.powers,
  });

  Superheroe copyWith({String? name, int? exp, List<String>? powers}) {
    return Superheroe(
      name: name ?? this.name,
      experience: exp ?? this.experience,
      powers: powers ?? this.powers,
    );
  }
}
