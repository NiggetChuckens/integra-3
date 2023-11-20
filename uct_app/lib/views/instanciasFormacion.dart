import 'package:flutter/material.dart';

class VistaConImagen extends StatelessWidget {
  const VistaConImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista con Imágenes'),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas
        ),
        itemBuilder: (context, index) {
          // Lista de rutas de las imágenes
          List<String> rutasImagenes = [
            'lib/images/virtualizatucurso.png',
            'lib/images/tallerestrategia.png',
            'lib/images/conversatorio.png',
            'lib/images/podcast.png',
            'lib/images/espaciowebinar.png',
            'lib/images/somosdigital.png',
          ];

          // Lista de vistas a las que redirigir
          List<Widget> vistas = [
            const SegundaVista(),
            const SegundaVista(),
            const SegundaVista(),
            const SegundaVista(),
            const SegundaVista(),
            const SegundaVista(),
          ];

          return _crearImagen(context, rutasImagenes[index], vistas[index]);
        },
      ),
    );
  }

  Widget _crearImagen(BuildContext context, String rutaImagen, Widget vista) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => vista),
        );
      },
      child: Image.asset(
        rutaImagen,
        width: 100, // Ajusta el ancho de la imagen
        height: 100, // Ajusta la altura de la imagen
        fit: BoxFit.cover, // Ajusta la proporción de la imagen
      ),
    );
  }
}

class SegundaVista extends StatelessWidget {
  const SegundaVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Vista'),
      ),
      // Aquí puedes añadir más widgets para completar tu vista
    );
  }
}

// Debes definir las clases TerceraVista, CuartaVista, QuintaVista, SextaVista y SeptimaVista de manera similar```