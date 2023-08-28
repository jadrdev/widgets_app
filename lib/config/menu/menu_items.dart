import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
   MenuItems(
      title: 'Counter RiverPod',
      subtitle: 'Counter con Riverpod',
      link: '/counter',
      icon: Icons.numbers_rounded),
  MenuItems(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'ProgressIndicator',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y dialogs',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline_rounded),
  MenuItems(
      title: 'Animated Container',
      subtitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItems(
      title: 'UI Controls',
      subtitle: 'Controles de usuario',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Tutorial',
      subtitle: 'Tutorial de la app',
      link: '/tutorial',
      icon: Icons.school_rounded),
  MenuItems(
      title: 'Scroll infinito',
      subtitle: 'Scroll infinito',
      link: '/infinite',
      icon: Icons.insert_drive_file_outlined),
      MenuItems(
      title: 'Cambiar Tema',
      subtitle: 'Cambiar el tema de la app',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
 
];
