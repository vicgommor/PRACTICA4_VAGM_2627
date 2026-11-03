class Pais {

  late String nombre; // Declaramos el nombre , e indicamos que lo inicializaremos después
  String? capital; 
  String? poblacion;
  String? imagen;
  String? descripcion;
  double? latitud;
  double? longitud;

  Pais({
    required this.nombre,
    this.capital,
    this.poblacion,
    this.imagen,
    this.descripcion,
    this.latitud,
    this.longitud,
  });

  /* 
  Constructor con nombre a partir de un diccionario.
  */
  Pais.fromJSON(Map<String, dynamic> json) {
    nombre = json["nombre"] ?? "";
    capital = json["capital"] ?? "";
    poblacion = json["poblacion"] ?? "";
    imagen = json["imagen"] ?? "";
    descripcion = json["descripcion"] ?? "";
    latitud = json["latitud"] ?? 0.0;
    longitud = json["longitud"] ?? 0.0;
  }

  @override
  String toString() => '''\x1B[34mPaís:\t\x1B[36m$nombre\x1B[0m
\x1B[34mCapital:\t\x1B[36m$capital\x1B[0m
\x1B[34mPoblación:\t\x1B[31m$poblacion\n\x1B[0m
\x1B[34mImagen:\t\x1B[30m$imagen\n\x1B[0m
\x1B[34mDescripción:\t\x1B[36m$descripcion\n\x1B[0m
\x1B[34mCoordenadas:\t\x1B[36m($latitud, $longitud)\x1B[0m
''';

}
