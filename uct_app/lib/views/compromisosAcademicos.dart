import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CompromisosAcademicosPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final List<Widget> imageSliders = [
    'TRANSFORMACIÓN DE CURSO: GENERAL',
    'TRANSFORMACIÓN DE CURSO: VIRTUALIZACIÓN DE CURSOS',
    'ELABORACIÓN DE RECURSOS PARA EL APRENDIZAJE',
    'ELABORACIÓN DE RECURSOS EDUCATIVOS DIGITALES',
    'EVALUACIÓN TRABAJO COLABORATIVO: COMUNIDADES DE APRENDIZAJE',
    'CRITERIOS DE CALIDAD PARA LA PRODUCCIÓN DE CONTENIDOS VIRTUALES',
    'PAUTA PARA LA EVALUACIÓN DE RECURSOS EDUCATIVOS DIGITALES',
    'VIRTUALIZACIÓN CURSOS PROGRAMAS MÓDULOS',
    'Title9'
  ]
      .map((item) => Container(
            child: Card(
              color: Color.fromARGB(255, 169, 163, 244),
              child: Center(
                child: Center(
                  child: Text(item, style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compromisos Academicos'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/images/compromisos-academicos.jpg'), // replace with your image path
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
                opacity: 0.5),
          ),
          child: Opacity(
            opacity: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Validacion de Compromisos Academicos 2023',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Compromisos academicos 2023',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Para solicitar la validación de productos del CINAP (Centro de Innovación en Aprendizaje Docencia y Tecnología Educativa), realice los siguientes pasos:'),
                  ),
                    // Add this line at the top of your file
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () async {
                        const url = "http://dte.uct.cl/wp-content/uploads/2023/09/Tabla-de-compromisos_2023.pdf";
                        const intentUrl = "intent://#Intent;scheme=http;package=com.android.chrome;end";
                        if (await canLaunch(intentUrl)) {
                          await launch(intentUrl);
                        } else if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false, forceWebView: false);
                        } else {
                          throw 'Could not launch ';
                        }
                      },
                      child: const Text('Ver tabla de compromisos académicos'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Recepción de documentación: hasta 30 de noviembre 2023'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Envío de constancias DTE-CeDID: entre 15  y 20 de diciembre 2023'),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'PASO 1.- Utilice las fichas disponibles, dependiendo del Producto a validar:\n',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          '- FICHA TRANSFORMACIÓN DE CURSOS: GENERAL (Sólo si no trabaja con el CINAP)\n\n'
                          '- FICHA TRANSFORMACIÓN DE CURSO: VIRTUALIZACIÓN DE CURSOS (Sólo si no trabaja con el CINAP)\n\n'
                          '- FICHA ELABORACIÓN DE RECURSOS PARA EL APRENDIZAJE\n\n'
                          '- FICHA ELABORACIÓN DE RECURSOS EDUCATIVOS DIGITALES (Sólo si no trabaja con el CINAP)\n\n'
                          '- FICHA EVALUACIÓN TRABAJO COLABORATIVO: COMUNIDADES DE APRENDIZAJE\n\n',
                        ),
                      ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Se aportan también documentos orientadores:\n',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          '- DOCUMENTO ORIENTADOR: CRITERIOS DE CALIDAD PARA LA PRODUCCIÓN DE CONTENIDOS VIRTUALES\n\n'
                          '- DOCUMENTO ORIENTADOR: PAUTA PARA LA EVALUACIÓN DE RECURSOS EDUCATIVOS DIGITALES\n\n'
                          '- DOCUMENTO ORIENTADOR: PAUTA DE RETROALIMENTACIÓN DE GUÍA DE APRENDIZAJE',
                        ),
                      ),
                    ),
                  // Add more Text widgets as needed
                  SizedBox(
                      height: MediaQuery.of(context).size.height /
                          2), // half of the screen height
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                    items: imageSliders,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height /
                          2), // half of the screen height
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                          // Validation logic
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                          ),
                          // Validation logic
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        // Add more TextFormField widgets as needed
                        ElevatedButton(
                          onPressed: () {
                            // Validate and save form
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a Snackbar
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Form submitted'),
                                ),
                              );
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
