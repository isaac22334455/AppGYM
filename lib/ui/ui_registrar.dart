
import 'package:flutter/material.dart';
import 'package:aplicacion_ejersisio/ui/widgets/widgets_login.dart';
class ui_registrar extends StatefulWidget{
  const ui_registrar({super.key});

  @override
  State<ui_registrar> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<ui_registrar>{

  TextEditingController _usuario = TextEditingController();
  TextEditingController _contrasena = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BodyTracking')),
      ),
      body: SingleChildScrollView(
        child: MyContainer(
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200, // Ancho deseado
                height: 150, // Alto deseado
              ),
              _sizeEspacio(),
              _sizeEspacio(),
              MyTextInput(inputController: _usuario, label: 'Nombre de Usuario'),
              MyTextInput(inputController: _contrasena, label: 'Cree una Contraseña'),
              _sizeEspacio(),

              _sizeEspacio(),
              MyButton(
                lblText: Text('ACEPTAR'),
                press: () {

                },
              ),
              _sizeEspacio(),

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