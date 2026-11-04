import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/continente.dart';
import 'package:paisesgui/ui/screens/paises_screen.dart';

/* Pantalla ContinentesScreen: muestra cinco CircleAvatar con los distintos continentes */

class ContinentesScreen extends StatelessWidget {
  ContinentesScreen({super.key});

  // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estructura de la pantalla Material Design
      body: Center(
        // Centramos el contenido
        child: SingleChildScrollView(
          // Contenedor con scroll por si nos salimos del espacio disponible
          child: Column(
            // Organizamos los continentes en forma de columna
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: // Obtendremos la lista de widgets con los continentes con la
                // función privada _creaListaContinentes.
                _creaListaContinentes(_repository.getContinentes()),
          ),
        ),
      ),
    );
  }
}

List<Widget> _creaListaContinentes(List<Continente> listaContinentes) {
  // Devolveremos una lista de widgets
  List<Widget> listaWidgets = [];

  // Recorremos la lista de continentes
  for (Continente continente in listaContinentes) {
    listaWidgets.add(
      // Y añadimos a la lista un widget personalizado de tipo ContinenteRoundButton
      ContinenteRoundButton(
        nombre: continente.nombre,
        imagen: continente.imagen ?? "",
      ),
    );
    listaWidgets.add(
      const SizedBox(height: 20),
    ); // Añadimos un espacio después del widget con el continente
  }
  return listaWidgets;
}

class ContinenteRoundButton extends StatelessWidget {
  const ContinenteRoundButton({
    required this.imagen,
    required this.nombre,
    super.key,
  });

  final String imagen;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    // TO-DO

    // devolveremos un widget de tipo CircleAvatar con las siguientes propiedades
    // radius: 110
    // imagen de fondo: la imagen que nos han proporcionado. Esta imagen se obtendrá de Internet
    // Este widget contendrá como hijo un widget de tipo Text, con el nombre del continente
    // Para darle estilo al texto, puedes utilizar: style: Theme.of(context).textTheme.displayMedium,
    // (en el Main, hemos definido ya un estilo personalizado para la aplicación, por tanto, de aquí hacemos referencia a ese tema)
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>
            PaisesScreen(nombreContinente: nombre),
          ),
        );
      },
      child: CircleAvatar(
        radius: 110,
        backgroundImage: NetworkImage(imagen),
        child: Text(
          nombre,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}