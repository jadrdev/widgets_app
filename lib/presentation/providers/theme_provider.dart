//  Estado para crear un booleado
//  para cambiar el tema de la aplicación
//  y un método para cambiar el valor del booleado
//  y notificar a los widgets que estén escuchando
//  que el valor ha cambiado.
// isDarkModeProvider = boolean

import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = StateProvider((ref) => false);