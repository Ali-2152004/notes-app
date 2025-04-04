import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/edit_note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteview();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8),
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 27),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    'There are some tips and trick for flutter mobile development',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16, top: 15, bottom: 10),
                child: Text(
                  'Mar 16 2025 ',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
