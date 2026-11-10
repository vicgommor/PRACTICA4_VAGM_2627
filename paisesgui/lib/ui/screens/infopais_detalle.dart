

import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';
import 'package:paisesgui/ui/widgets/my_weather_info.dart';

class InfoPaisDetalle extends StatelessWidget {
  InfoPaisDetalle({
    super.key,
  });

      // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();


  @override
  Widget build(BuildContext context) {
    Pais pais = _repository.infoPais();

    // TO-DO
    // Añadir la información siguiente sobre el país:
    // Población (num. de habitantes), latitud y longitud.
    // Podéis combinar Column y Row para mostrar la información tabulada


    // Antes de la información, deberemos mostrar la información sobre el tiempo en el país,
    // mediante el widtget personalizado MyWeatherInfo(), que se os proporciona ya implementado
    

    return Scaffold(
      appBar: AppBar(title: Text("Población y tiempo")),
      body: SingleChildScrollView(
        child: Column(

          children: [
            MyWeatherInfo(),
            Row(
              children: [
                Expanded(child: Text("Población")),
                Expanded(child: Text("${pais.poblacion}"))
              ],
            ),
            Row(
              children: [
                Expanded(child: Text("Latitud")),
                Expanded(child: Text("${pais.latitud}"))
              ],
            ),
            Row(
              children: [
                Expanded(child: Text("Longitud")),
                Expanded(child: Text("${pais.longitud}"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
