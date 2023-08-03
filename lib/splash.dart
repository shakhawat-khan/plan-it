import 'package:flutter/material.dart';
import 'package:plan_it/list.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'welcome to',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Text(
          'Plan IT',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
        ),
        const SizedBox(
          height: 260,
        ),
        const Text(
          'Your Personal task management and',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        const Text(
          'planning solution',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 17,
        ),
        SizedBox(
          height: 35,
          width: 180,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: const Color(0xff393939)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Listwidget()),
                );
              },
              child: const Text(
                'Let\'s get started',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.white),
              )),
        )
      ]),
    );
  }
}
