import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarms),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_rounded),
              label: const Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new_rounded),
              label: const Text('Text Icon'),
            ),
            const TextButton(onPressed: null, child: Text('Text Disabled')),
            TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.accessibility_new_rounded),
              label: const Text('Text Icon Disabled'),
            ),

            // Custom Button

            CustomButton(),

            IconButton(
                onPressed: () {}, icon: Icon(Icons.access_alarm_rounded)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colors.primary),
                  iconColor: MaterialStateProperty.all(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
