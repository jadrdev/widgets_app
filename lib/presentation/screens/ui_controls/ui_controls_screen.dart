import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum TransportMode { car, bike, boat, train, plane }

class _UIControlsViewState extends State<_UIControlsView> {
  bool _isDeveloperMode = true;
  TransportMode selectedTransported = TransportMode.plane;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: _isDeveloperMode,
          onChanged: (value) {
            setState(() {
              _isDeveloperMode = !_isDeveloperMode;
            });
          },
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
        ),
        ExpansionTile(
          title: const Text('Transport Mode'),
          subtitle: Text('$selectedTransported'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: Text('Viajar en coche'),
              value: TransportMode.car,
              groupValue: selectedTransported,
              onChanged: (value) =>
                  setState(() => selectedTransported = TransportMode.car),
            ),
            RadioListTile(
              title: const Text('Bike'),
              subtitle: Text('Viajar en bicicleta'),
              value: TransportMode.bike,
              groupValue: selectedTransported,
              onChanged: (value) =>
                  setState(() => selectedTransported = TransportMode.bike),
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: Text('Viajar en barco'),
              value: TransportMode.boat,
              groupValue: selectedTransported,
              onChanged: (value) =>
                  setState(() => selectedTransported = TransportMode.boat),
            ),
            RadioListTile(
              title: const Text('Train'),
              subtitle: Text('Viajar en tren'),
              value: TransportMode.train,
              groupValue: selectedTransported,
              onChanged: (value) =>
                  setState(() => selectedTransported = TransportMode.train),
            ),
            RadioListTile(
              title: const Text('Plane'),
              subtitle: Text('Viajar en avión'),
              value: TransportMode.plane,
              groupValue: selectedTransported,
              onChanged: (value) =>
                  setState(() => selectedTransported = TransportMode.plane),
            ),
          ],
        ),
      //TODO: por aqui

      CheckboxListTile(
        title: const Text('Incluir Breakfast'),
        value: wantsBreakfast, 
        onChanged: (value) => setState(() => wantsBreakfast = !wantsBreakfast),
        ),
        CheckboxListTile(
        title: const Text('Incluir Lunch'),
        value: wantsLunch, 
        onChanged: (value) => setState(() => wantsLunch = !wantsLunch),
        ),
        CheckboxListTile(
        title: const Text('Incluir Cena'),
        value: wantsDinner, 
        onChanged: (value) => setState(() => wantsDinner = !wantsDinner),
        )
      ],
    );
  }
}
