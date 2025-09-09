import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class ConfiguracionScreen extends StatelessWidget {
  const ConfiguracionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Configuraciones'),
      drawer: AppDrawer(),
      body: _ConfiguracionView(),
    );
  }
}

class _ConfiguracionView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de configuraciones')
        ],
      ),
    );
  }
}