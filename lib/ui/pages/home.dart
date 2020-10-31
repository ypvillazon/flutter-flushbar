import 'package:flutter/material.dart';
import 'package:flutter_flushbar/ui/widgets/custom_buttom.dart';
import 'package:flutter_flushbar/ui/widgets/message.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButtom('INFO', () => {MessageWidget.info(context, "Esto es un mensaje de información de 3 segundos", 3)} ),
            CustomButtom('WARN', () => {MessageWidget.warn(context, "Esto es un mensaje de advertencia de 5 segundos", 5)} ),
            CustomButtom('ERROR', () => {MessageWidget.error(context, "Esto es un mensaje de error de 7 segundos", 7)} ),
          ],
        ),
      ),
    );
  }
}