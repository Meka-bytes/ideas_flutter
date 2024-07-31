// /import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:taskly/circular_progress.dart';
import 'package:taskly/pages/profile_page.dart';
import 'package:taskly/pages/task_page.dart';
import 'package:taskly/widgets/urgent_task_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int pageIndex = 0;
  // final List<Widget> _pages = const [
  //   HomePage(),
  //   TaskPage(),
  //   ProfilePage(),
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Icon(
                      Icons.grid_view_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            //greetings user
            const GreetingUser(),
            const Padding(padding: EdgeInsets.all(10.0)),
            // search bar text fr
            // TODO change the functionality
            // find more suitable methods
            const SearchFied(),
            const Padding(padding: EdgeInsets.all(10)),
            // Task progress...
            const TaskProgress(),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            // Task reveiws
            const TaskReview(),
            const SizedBox(
              height: 10,
            ),
            // Urgent Task text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: FittedBox(
                    child: Text(
                      'Urgent task',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Just leave am like that!!
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => const SingleChildScrollView(
                  child: UrgentTaskCard(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GreetingUser extends StatelessWidget {
  const GreetingUser({
    super.key,
  });
  // TODO get users name for the login page
  // TODO get greeting time from date
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Hi, ',
                    style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'User',
                          style: GoogleFonts.lora(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold))
                    ]),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Be productive Today',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
      //end of greetings
    );
  }
}

class SearchFied extends StatelessWidget {
  const SearchFied({
    super.key,
  });
  // TODO re-structure the search bar
  // input functionalities for seach for task
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Search Task",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class TaskProgress extends StatelessWidget {
  const TaskProgress({
    super.key,
  });
  // TODO modify the circularProgressIndicator to follow the task progress
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Task Progress',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold),
                  ),
                  //TODO substitute with real value
                  const Text(
                    '30/40 task done',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      //TODO substitute with real date
                      child: Text(
                        'March 22',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: double.infinity,
                width: 100.0,
              ),
              // process indicator
              // TODO make evaluate the total task progress
              const CircularProgress(
                strokeWidth: 7,
                boxHeight: 70,
                boxWidth: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TaskReview extends StatelessWidget {
  const TaskReview({
    super.key,
  });
  // TODO get the progress of users task done
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 159.0,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    gradient: const LinearGradient(
                        colors: [Colors.purpleAccent, Colors.purple]),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 155,
                width: 159.0,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 104, 158, 253),
                      Color.fromARGB(255, 0, 126, 230)
                    ]),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const Padding(padding: EdgeInsets.all(3)),
              Container(
                height: 126,
                width: 159.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
