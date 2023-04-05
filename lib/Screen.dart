import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Vm.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final Vm _timerVM = Vm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 70,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 68,
              width: 200,
              child: const Text(
                "Hi Creator!",
                style: TextStyle(fontSize: 36, color: Color(0xff000000)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffCAF0F8),
              ),
              height: 500,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Timer",
                    style: GoogleFonts.inter(
                        textStyle:
                            TextStyle(color: Colors.black, letterSpacing: 1)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Observer(builder: (context) {
                        return Text(
                          _timerVM.count.toString(),
                          style: const TextStyle(
                            fontSize: 70,
                          ),
                        );
                      }),
                      const SizedBox(
                        width: 5,
                      ),
                      Observer(builder: (context) {
                        return const Text(
                          ":",
                          style: TextStyle(
                            fontSize: 70,
                          ),
                        );
                      }),
                      const SizedBox(
                        width: 5,
                      ),
                      Observer(builder: (context) {
                        return Text(
                          _timerVM.data.toString(),
                          style: const TextStyle(
                            fontSize: 70,
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _timerVM.countdown();
                      },
                      child: Observer(builder: (context) {
                        return Text(
                          _timerVM.stat,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                   
                    const SizedBox(
                      width: 10,
                    ),
               
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
