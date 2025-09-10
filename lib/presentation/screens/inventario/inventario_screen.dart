import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class InventarioScreen extends StatelessWidget {
  const InventarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Inventarios'),
      drawer: AppDrawer(),
      body: _InventarioView(),
    );
  }
}

class _InventarioView extends StatelessWidget {
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
              Text('Pestaña de Inventario')
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
            icon: Icon(Icons.add_circle),
            label: Text('Agregar'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.edit),
            label: Text('Ajustes'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.trending_down),
            label: Text('Bajos en Inv.'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.description),
            label: Text('Reporte de Inv.'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.auto_stories),
            label: Text('Reporte de Mov.'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.list_alt),
            label: Text('Kardex Inv.'),
            onPressed: () {
              
            }
          ),
        ],
      ),
    );
  }
}