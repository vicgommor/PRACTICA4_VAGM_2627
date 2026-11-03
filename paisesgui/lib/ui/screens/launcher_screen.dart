import 'package:flutter/material.dart';
import 'package:paisesgui/ui/screens/continentes_screen.dart';
import 'package:paisesgui/ui/screens/infopais_detalle.dart';
import 'package:paisesgui/ui/screens/infopais_general.dart';
import 'package:paisesgui/ui/screens/paises_screen.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => ContinentesScreen(),
                  ),
                );
              },
              child: const Text("Pantalla Continentes")),
          ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => PaisesScreen(),
                  ),
                );
              },
              child: const Text("Pantalla Paises")),
          ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        InfoPaisGeneral(),
                  ),
                );
              },
              child: const Text(
                  "Pantalla con información\ngeneral del país.")),
          ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        InfoPaisDetalle(),
                  ),
                );
              },
              child: const Text(
                  "Pantalla con información\ndetallada del país"))
        ],
      ),
    );
  }
}
