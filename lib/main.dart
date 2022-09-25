import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LotterApp());
}

class LotterApp extends StatefulWidget {
  const LotterApp({super.key});

  @override
  State<LotterApp> createState() => _LotterAppState();
}

Random random = Random();
int x = 0;

class _LotterAppState extends State<LotterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Lottery App"))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', scale: 0.5),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "lottery number is 5",
              style: TextStyle(fontSize: 20),
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.20),
                  borderRadius: BorderRadius.circular(10)),
              child: x == 5
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.done_all, color: Colors.green),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Congrulation!\nYouhave win the lottery ,your number is $x ",
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.green,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline, color: Colors.red),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Better luck for Next time your number is $x\n try again",
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(7);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
