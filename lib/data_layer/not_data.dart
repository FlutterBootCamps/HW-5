

import 'package:note_app/models/note.dart';

class NotData {
  List<Note> allNote = [];

  getallNote() {
    sampleNotes.map((note) {
      allNote.add(note);
    }).toList();
  }
}

class Settings {
  List<Note> allNote = [];

  getallNote() {
    sampleNotes.map((note) {
      allNote.add(Note.fromJson(Note as Map));
    }).toList();
  }
}