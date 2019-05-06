class Candidate {
  int id;
  String name;
  String surname;
  int age;
  String party;
  int listNumber;
  int numberOnList;
  Candidate(
      {this.id,
      this.name,
      this.surname,
      this.age,
      this.party,
      this.listNumber,
      this.numberOnList});

  factory Candidate.fromJson(Map<String, dynamic> jsonObject) {
    return Candidate(
        id: jsonObject["id"],
        name: jsonObject["name"],
        surname: jsonObject["surname"],
        age: jsonObject["age"] ,
        party: jsonObject["party"],
        listNumber: jsonObject["listNumber"],
        numberOnList: jsonObject["numberOnList"]);
  }
  @override
  String toString() {
    return name+" "+surname+" lat "+age.toString();
  }
}
