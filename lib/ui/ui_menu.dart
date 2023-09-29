import 'package:flutter/material.dart';
import 'package:aplicacion_ejersisio/ui/widgets/widgets_menu.dart';
class ui_menu extends StatefulWidget{
  const ui_menu({super.key});

  @override
  State<ui_menu> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<ui_menu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), // Icono del botón (puedes cambiarlo según tus necesidades)
            onPressed: () {
              // Acción a realizar cuando se presiona el botón
            },
          ),
        ],
        title: Align(
          alignment: Alignment.centerRight, // Alinea el texto a la derecha
          child: Text(
            'BodyTracking',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: MyContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sizeEspacio(),
              _sizeEspacio(),
              MyText(text: 'USUARIO'),
              _sizeEspacio(),
              _sizeEspacio(),
              _sizeEspacio(),
              MyButton(
                lblText:'Calendario',
                press: () {

                },
              ),

              MyButton(
                lblText:'Carrusel',
                press: () {

                },
              ),
              MyButton(
                lblText:'Seguimiento de progreso',
                press: () {

                },
              ),
              MyButton(
                lblText:'Analisis de progreso',
                press: () {

                },
              ),
              MyButton(
                lblText:'Notificaciones',
                press: () {

                },
              ),
              Divider(
                color: Colors.white70, // Color de la línea
                thickness: 1, // Grosor de la línea
                height: 20, // Altura de la línea
              ),
              _sizeEspacio(),
              MyButton(
                lblText:'Ajustes',
                press: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _sizeEspacio(){
  return SizedBox(
    height: 30,
  );
}