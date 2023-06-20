import '../database.dart/databaze.dart';
import 'builder.dart';
import '../servise/io_servise.dart';
import '../model.dart/create_title.dart';

class menu extends Builder {
  @override
  void builder() {
    super.builder();
    while (true) {
      String menu = io.outpudText(
          "________________Note_Xush_kelibsiz_______________\n1.Note create\n2.note qidirish\n3.update\n4.Note Show\n5.qushimcha\n6.exit\n-------> :");

      switch (menu) {
        case "1":
          create();
          break;
        case "2":
          search();
          break;
        case "3":
          updating();
          break;
        case "4":
          show();
          break;
        case "5":
          qushimcha();
          break;
        case "6":
          break;
        default:
      }
    }
  }
}

void qushimcha() {
  String update = io.outpudText("1.information add\n2.remove\n----> ");
  switch (update) {
    case "1":
      adding();
      break;
    case "2":
      removing();
      break;

    default:
  }
}

void adding() {
  for (CreateNote e in baza) {
    print(e);
  }
  String title = io.outpudText("\nselect the title you want to play: ");
  String malumot =
      io.outpudText("\nselect the information you want to play:  ");
  for (CreateNote e in baza) {
    if (e.title == title) {
      e.title += "\n $malumot";
    }
  }
}

void updating() {
  String title = io.outpudText("\nselect the title you want to play: ");

  for (CreateNote e in baza) {
    if (e.title == title) {
      up(title);
    } else {
      print("in this the title is old created ⛔");
    }
  }
}

void up(String title) {
  String tanla = io.outpudText(
      "\n 1.title  select \n2.discription select \n3.select checking\n----->  ");
  dynamic malumot;
  switch (tanla) {
    case "1":
      malumot = io.outpudText("\nTitle qanday malumotga uzgartirmoqchisiz ");
      break;
    case "2":
      malumot =
          io.outpudText("\ndiscription qanday malumotga uzgartirmoqchisi ");
      break;
    case "3":
      String d = io.outpudText("\ncheckni kiriting\n1.true\n2.false ");
      if (d == "1") {
        malumot = true;
      } else if (d == "2") {
        malumot = false;
      }
      break;

    default:
  }

  for (CreateNote e in baza) {
    if (e.title == title) {
      switch (tanla) {
        case "1":
          e.title = malumot;
          break;
        case "2":
          e.discription = malumot;
          break;
        case "3":
          e.check1 = malumot;
          break;

        default:
      }

      ;
    }
  }
}

void show() {
  if (baza.isEmpty) {
    print("hali hech narsa qushilmagan 😴🧐🧐🧐");
  }
  String s = io.outpudText("sort is: \n1.first\n2.last\n0.ortga\n-----> ");
  int count = 0;
  if (s == '2') {
    for (CreateNote e in baza.reversed) {
      print("$count  $e");
    }
  } else {
    for (CreateNote e in baza) {
      print("$count  $e");
    }
  }
}

void removing() {
  for (CreateNote e in baza) {
    print(e);
  }
  String title = io.outpudText("\ndelete ");
  for (int i = 0; i < baza.length; i++) {
    if (baza[i].title == title) {
      baza.removeAt(i);
    }
  }
}

void search() {
  for (CreateNote e in baza) {
    print(e.title1);
  }

  String title = io.outpudText("\n Looking for reminder: ");
  if (baza.isEmpty) {
    print("hali hech narsa qushilmagan 😴🧐🧐🧐");
  }

  for (CreateNote e in baza) {
    if (e.title == title) {
      print(e);
    }
  }
}

void create() {
  String title = io.outpudText("Title name : ");
  String discription = io.outpudText("discription : ");
  print(" Check:  ");
  bool check = false;
  DateTime time = DateTime.now();
  CreateNote newTitle = CreateNote(
      title: title, discription: discription, check: check, Time: time);

  print(tek(newTitle));
  print(newTitle.title);
}

bool tek(CreateNote newTitle) {
  if (!(baza.contains(newTitle))) {
    baza.add(newTitle);
    print(baza);
    print("sucsess ✅✅✅");
    return true;
  }

  print("such a title was created before ⛔⛔⛔");
  return false;
}
