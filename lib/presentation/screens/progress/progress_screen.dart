import 'package:flutter/material.dart';

class PogressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const PogressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressIndicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular Progress Indicator'),
          SizedBox(height: 20),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20),
          Text('Circular y Linear Progress Controlado'),
          _ControllerProgresIndicator(),
        ],
      ),
    );
  }
}

class _ControllerProgresIndicator extends StatelessWidget {
  const _ControllerProgresIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),

      builder:(context, snapshot) {
      final progressValue = snapshot.data ?? 0.0;
      return  Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black12,
              value: progressValue,
            ),
            const SizedBox(width: 20),
            Expanded(child: 
              LinearProgressIndicator(
                backgroundColor: Colors.black12,
                value: progressValue,
              )
            ),
          ],
          
        ),
      );
    });
  }
}