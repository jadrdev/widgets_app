import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola, soy un snackbar'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => 
    AlertDialog(
      title: const Text('¿Estás seguro?'),
      content: const Text('Excepteur cupidatat voluptate in sit. Anim sit qui laboris cupidatat officia. Velit exercitation ea pariatur amet reprehenderit amet. Eu anim sint enim ad veniam quis anim mollit consectetur deserunt labore fugiat elit. Incididunt tempor incididunt dolore voluptate elit duis. Cillum irure incididunt pariatur laboris adipisicing irure elit veniam nulla reprehenderit irure duis eiusmod id. Adipisicing non dolore culpa incididunt in incididunt in ullamco non minim nostrud laboris ea Lorem.'),
      actions: [
        TextButton(onPressed:() => context.pop(), child: const Text('Cancelar')),
        FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
      ],
    )
    );
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y diálogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      Text('Cillum reprehenderit ullamco aliquip veniam mollit qui reprehenderit. Pariatur consectetur minim Lorem laboris. Velit irure labore tempor ad sit id fugiat proident excepteur exercitation Lorem ad aliquip do. Lorem nulla irure enim cupidatat pariatur Lorem. Adipisicing ad pariatur est adipisicing quis irure. Officia minim nostrud in sit consectetur eu nulla dolor culpa. Exercitation et nulla incididunt amet culpa commodo ipsum magna. Ipsum officia ipsum duis enim tempor amet excepteur.')
                    ]
                    );
                },
                child: const Text('Licencias usadas')),
            FilledButton(onPressed: () => openDialog(context), child: const Text('Mostrar diálogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
