import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class VentasScreen extends StatelessWidget {
  const VentasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Ventas'),
      drawer: AppDrawer(),
      body: _VentasView(),
    );
  }
}

class _VentasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de ventas')
        ],
      ),
    );
  }
}