import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class CreditosScreen extends StatelessWidget{
  const CreditosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Creditos'),
      drawer: AppDrawer(),
      body: _CreditosView(),
    );
  }
}

class _CreditosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Pestaña de creditos')
        ],
      ),
    );
  }
}