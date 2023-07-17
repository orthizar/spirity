import 'package:flutter/material.dart';
import 'package:spirity/widgets/bottommenu.dart';
import 'package:timeline_tile/timeline_tile.dart';

const entries = [
  {
    "title": "Entry 1",
    "date": "2021-01-01",
    "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  },
  {
    "title": "Entry 2",
    "date": "2021-01-02",
    "content":
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  },
  {
    "title": "Entry 3",
    "date": "2021-01-03",
    "content":
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  },
  {
    "title": "Entry 4",
    "date": "2021-01-04",
    "content": "Duis aute irure dolor in reprehenderit in voluptate velit."
  },
  {
    "title": "Entry 5",
    "date": "2021-01-05",
    "content": "Excepteur sint occaecat cupidatat non proident."
  },
  {
    "title": "Entry 6",
    "date": "2021-01-06",
    "content": "Sunt in culpa qui officia deserunt mollit anim id est laborum."
  },
  {
    "title": "Entry 7",
    "date": "2021-01-07",
    "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  },
  {
    "title": "Entry 8",
    "date": "2021-01-08",
    "content":
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  },
  {
    "title": "Entry 9",
    "date": "2021-01-09",
    "content":
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  },
  {
    "title": "Entry 10",
    "date": "2021-01-10",
    "content": "Duis aute irure dolor in reprehenderit in voluptate velit."
  },
  {
    "title": "Entry 11",
    "date": "2021-01-11",
    "content": "Excepteur sint occaecat cupidatat non proident."
  },
];

class JournalScreen extends StatelessWidget {
  const JournalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Journaling screen with timeline
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Journal",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            // Timeline using timeline_tile package
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                final Map entry = entries[index];
                return TimelineTile(
                  alignment: TimelineAlign.manual,
                  isFirst: index == 0,
                  isLast: index == entries.length - 1,
                  lineXY: 0.25,
                  startChild: Text(
                    entry["date"],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  endChild: Container(
                    constraints: const BoxConstraints(minHeight: 100),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry["title"],
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            entry["content"],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
