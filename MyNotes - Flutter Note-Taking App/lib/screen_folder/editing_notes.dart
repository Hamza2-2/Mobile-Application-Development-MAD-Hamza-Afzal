import 'package:flutter/material.dart';
import '../Notespage_folder/notes_page.dart';
import '../db/database.dart';

class EditNotes extends StatefulWidget {
  final Note? note;
  const EditNotes({this.note});

  @override
  State<EditNotes> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNotes> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }
  }

  Future<void> saveNote() async {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty || content.isEmpty) return;

    final newNote = Note(
      id: widget.note?.id,
      title: title,
      content: content,
      timestamp: DateTime.now(),
    );

    if (widget.note == null) {
      await nDatabase.instance.create(newNote);
    } else {
      await nDatabase.instance.update(newNote);
    }

    Navigator.pop(context);
  }

  Future<void> deleteNote() async {
    if (widget.note != null) {
      await nDatabase.instance.delete(widget.note!.id!);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.note == null ? 'New Note' : 'Edit Note'),

        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(height: 8),
            Expanded(
              child: TextField(
                controller: _contentController,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(hintText: 'Content'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: saveNote,
      ),
    );
  }
}
