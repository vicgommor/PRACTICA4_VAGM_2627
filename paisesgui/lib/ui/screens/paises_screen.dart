import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';

class PaisesScreen extends StatelessWidget {
  PaisesScreen({super.key});

  // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // Proporciona a _creaLlistaPaises la lista de paises de Europa
          child:
              _creaListaPaises(_repository.getPaises())), 
    );
  }

  Widget _creaListaPaises(List<Pais> paises) {
    // Recibimos la lista de paises
    
    // TO-DO
    // Debemos utilizar un ListView.builder para recorrer la lista de países
    // y generar un widget personalizado de tipo PaisCard, con la imagen y el nombre.
    
    
    return ListView.builder(
      itemCount: paises.length,
      itemBuilder: (BuildContext context, int index) {
      
      return PaisCard(imagen: paises[index].imagen ?? '', nombre: paises[index].nombre);
      }
    );
  }
}

class PaisCard extends StatelessWidget {
  // Este widget recibirá dos argumentos con nombre para construirse:
  // la imagen (imagen) y el nombre del país (nombre)
  const PaisCard({
    super.key,
    required this.imagen,
    required this.nombre,
  });

  final String imagen;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    // TO-DO
    // Devuelve un widget de tipo Card, con el diseño que desees, pero
    // que muestre la imagen  (obtenida de Internet a partir de la url)
    // y el nombre del país.

    return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    
      child: Stack(
        children: [
          Image(
            image: NetworkImage(imagen),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Text(
              nombre,
              style: Theme.of(context).textTheme.displaySmall,
            )
          )
        ],
      )
    );
  }
}
