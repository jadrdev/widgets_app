import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String description;
  final String image;

  const SlideInfo({
    required this.title,
    required this.description,
    required this.image,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Busca la comida',
    description: 'Esta es una app de ejemplo',
    image: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Bienvenido a la app',
    description: 'Esta es una app de ejemplo',
    image: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Bienvenido a la app',
    description: 'Esta es una app de ejemplo',
    image: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((e) => _Slide(
                      title: e.title, description: e.description, image: e.image))
                  .toList()),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const _Slide(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final descriptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(title, style: titleStyle),
          const SizedBox(
            height: 20,
          ),
          Text(description, style: descriptionStyle,),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
