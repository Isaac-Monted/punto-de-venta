import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class ComprasScreen extends StatelessWidget {
  const ComprasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Compras'),
      drawer: AppDrawer(),
      body: _ComprasView(),
    );
  }
}

class _ComprasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de compras')
        ],
      ),
    );
  }
}