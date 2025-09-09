import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class FacturasScreen extends StatelessWidget{
  const FacturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Facturas'),
      drawer: AppDrawer(),
      body: _FacturasView(),
    );
  }
}

class _FacturasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de Facturas')
        ],
      ),
    );
  }
}