
import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';

class InfoPaisGeneral extends StatelessWidget {
  InfoPaisGeneral({super.key, required this.nombrePais});
  final String nombrePais;
    // Referencia al repositorio, de donde obtendremos la lista de continentes
  
  final PaisesRepository _repository = PaisesRepository();


  @override
  Widget build(BuildContext context) {

    // Recogemos el país del repositorio
    Pais pais = _repository.infoPais();
    
    return Scaffold(
      appBar: AppBar(title: Text("Informacion General")),
      body: 
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [

              Image(
                image: NetworkImage(pais.imagen ?? ""),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  pais.nombre,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: Text(
                  "Capital: ${pais.capital ?? ""}",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  pais.descripcion ?? "",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
    ); 



    // TO-DO
    // Añadir la información siguiente sobre el país:
    // Imagen, nombre, capital y descripción, de forma similar a como se muestra en el enunciado

    // Podéis utilizar los widgets y contenedores que consideréis oportunos (Containers, SingleChildScrollView, Columns, etc)
    // Debéis tener en cuenta no sobrepasar los límites y dibujar fuera del espacio disponible
    // Para comprobar que no os salís, podéis probar a girar el dispositivo (si lo estáis haciendo sobre Android)
  }
}
