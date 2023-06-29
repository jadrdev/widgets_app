import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final item = appMenuItems[index];
          return _CustomListTitle(item: item);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({required this.item});

  final MenuItems item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(item.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios, color: colors.primary),
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      onTap: () => {
        // TODO: Navigate to the selected screen
      },
    );
  }
}
