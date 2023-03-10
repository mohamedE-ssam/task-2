// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 100, bottom: 50, left: 50, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'NotePad',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Search note',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        )),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 80,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: const ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 25, top: 5),
                        child: Text('leading'),
                      ),
                      subtitle: Text(
                        'sub title',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.amberAccent,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.teal,
              ),
            ),
          ),
        ));
  }
}
