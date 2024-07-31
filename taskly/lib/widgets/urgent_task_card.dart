import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/circular_progress.dart';

class UrgentTaskCard extends StatelessWidget {
  const UrgentTaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const CircularProgress(
                strokeWidth: 4,
                boxHeight: 50,
                boxWidth: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO edit variable Task heading
                  Text(
                    'Variable task',
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                  //TODO edit variable sub heading
                  Text(
                    'variable sub headings',
                    style: GoogleFonts.lato(color: Colors.white30),
                  )
                ],
              ),
              Text(
                '1 day left',
                style: GoogleFonts.lato(color: Colors.white30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
