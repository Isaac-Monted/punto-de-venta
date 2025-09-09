import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class ClientesScreen extends StatelessWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Clientes'),
      drawer: AppDrawer(),
      body: _ClientesView(),
    );
  }
}

class _ClientesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de clientes')
        ],
      ),
    );
  }
}