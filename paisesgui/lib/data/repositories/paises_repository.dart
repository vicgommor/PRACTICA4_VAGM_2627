// Define el repositorio de acceso a los datos
// Esta capa es la que se usa desde la aplicación para abstraer
// el acceso a los datos.
// Hemos cambiado el repositorio. 
// Ahora en vez de obtenerlo de la clase PaisesApi lo obtenemos de PaisesEjemplo


import 'package:paisesgui/data/services/paises_ejemplo.dart';
import 'package:paisesgui/domain/entities/continente.dart';
import 'package:paisesgui/domain/entities/pais.dart';

class PaisesRepository {
  // Con late indicamos que este valor 
  // se inicializar posteriormente (en el constructor)
  late PaisesEjemplo api;

  PaisesRepository() {
    api = PaisesEjemplo();
  }

  List<Continente> getContinentes() {
        // Devuelve una lista de provincias, obtenidas a partir de la propiedad
    // provincies de RepositoryData.

    List<Continente> continentes = [];
    for (var conti in api.continentes) {
      continentes.add(Continente(nombre: conti["nombre"], imagen: conti["imagen"]));
    }

    return continentes;
  }

  // Implementar el método getPaises a partir del continente
  List<Pais> getPaises(String nombreContinente){
    List<Pais> paises = [];

    // Recorremos la lista de provincies en RepositoryData para encontrar la que se busca
    for (var conti in api.continentes) {
      if (conti["nombre"] == nombreContinente) {
        // Cuando encontramos el continente, reocrremos los paises
        // y añadimos a la lista paises con los datos de cada pais

        for (var paisJSON in conti["paises"]) {
          paises.add(Pais.fromJSON(paisJSON));
        }
      }
    }

    return paises;
  }    

  // TO-DO:
  // Implementar el método infoPais
  Pais infoPais() {
    return Pais(nombre: 'Sin implementar');
  }

}
