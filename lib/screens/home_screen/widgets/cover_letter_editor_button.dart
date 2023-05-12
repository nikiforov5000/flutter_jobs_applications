import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/cover_letter_editor_screen/cover_letter_editor_screen.dart';

class CoverLetterEditorButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, CoverLetterEditor.id);
      },
      child: Text('Cover Letter'),);
  }
}
