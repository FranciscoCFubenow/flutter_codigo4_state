class Superheroe {
  String name;
  int experience;
  List<String> powers;

  Superheroe({
    required this.name,
    required this.experience,
    required this.powers,
  });

  Superheroe copyWith(
      {String? newName, int? newExperience, List<String>? newPowers}) {
    return Superheroe(
      name: newName ?? name,
      experience: newExperience ?? experience,
      powers: newPowers ?? powers,
    );
  }
}
