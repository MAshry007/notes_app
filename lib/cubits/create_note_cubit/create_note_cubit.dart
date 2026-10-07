import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/classes/note_model.dart';
import 'package:notes_app/cubits/create_note_cubit/create_note_states.dart';
import 'package:notes_app/widgets/constants.dart';

class CreateNoteCubit extends Cubit<CreateNoteStates> {
  CreateNoteCubit() : super(CreateNoteInitial()) {
    fetchAllNotes();
  }

  List<NoteModel>? notes;
  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(CreateNoteSuccess());
  }
}
