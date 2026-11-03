class Continente {
  late String nombre; // Declaramos el nombre , e indicamos que lo inicializaremos después
  String? imagen; // La url de la imagen es nulable

  /* 
  Constructor con argumentos por nombre: 
   - nombre es obligatorio, e 
   - imagen opcional.
  */
  Continente({
    required this.nombre,
    this.imagen,
  });

  /* 
  Constructor con nombre a partir de un diccionario.
  */
  Continente.fromJSON(Map<String, dynamic> json) {
    nombre = json["nombre"] ?? "";
    imagen = json["imagen"] ?? "";
  }

  @override
  String toString() => '''\x1B[34mNombre:\t\x1B[36m$nombre\x1B[0m
\x1B[34mImagen:\t\x1B[36m$imagen\n\x1B[0m''';
}