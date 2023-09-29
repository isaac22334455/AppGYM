
import 'package:flutter/material.dart';
import 'package:aplicacion_ejersisio/ui/ui_registrar.dart';
import 'package:aplicacion_ejersisio/ui/widgets/widgets_login.dart';
import 'package:aplicacion_ejersisio/ui/ui_menu.dart';
class CalculatorUI extends StatefulWidget{
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI>{

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
              MyTextInput(inputController: _contrasena, label: 'Contraseña'),
              _sizeEspacio(),

              _sizeEspacio(),
              MyButton(
                lblText: Text('INICIAR SESION'),
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ui_menu()),
                  );
                },
              ),
              Text(''),
              Text('O'),
              Text(''),
              MyButton(
                lblText: Text('REGISTRARSE'),
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ui_registrar()),
                  );
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