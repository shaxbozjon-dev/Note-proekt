class CreateNote {
  String title;
  String discription;
  bool check;
  DateTime Time;
  CreateNote({
    required this.title,
    required this.discription,
    required this.check,
    required this.Time,
  });
  String get title1 => title;
  set title1(String text) {
    title = text;
  }

  String get discription1 => discription;
  set discription1(String text) {
    discription1 = text;
  }

  bool get check71 => check;
  set check1(bool text) {
    check = text;
  }

  String get Time1 => Time1;

  set Time1(String text) {
    Time1 = text;
  }

  bool operator ==(Object other) {
    return other is CreateNote && other.title == title;
  }

  String nimadir() {
    String h;
    if (check != true) {
      h = "bajarilmadi⛔⛔⛔";
      return h;
    }
    h = "bajarildi✅✅✅";

    return h;
  }

  String teksts() {
    if (discription.length > 10) {
      return discription.substring(10, discription.length - 1);
    }
    return discription;
  }

  @override
  String toString() {
    return """\n
              ___________________________________________________________________________
              |            createNote(title: $title                                      |
              |  discription: ${teksts()}                                                |                 
              |                                                                          |
              |                   xolati: ${nimadir()},                                  |                                       
              |                        Time: $Time                                       |
              |__________________________________________________________________________|
              
              
              """;
  }
}
