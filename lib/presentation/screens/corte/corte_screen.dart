import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class CorteScreen extends StatelessWidget {
  const CorteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Cortes'),
      drawer: AppDrawer(),
      body: _CorteView(),
    );
  }
}

class _CorteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8.0,
            children: [
              _MenuContextual(),
              Text('Pestaña de Cortes')
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuContextual extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 5.0,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: [
          ElevatedButton.icon(
            icon: Icon(Icons.cut),
            label: Text('Corte de cajero'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.cut_outlined),
            label: Text('Corte del dia'),
            onPressed: () {
              
            }
          ),
        ],
      ),
    );
  }
}