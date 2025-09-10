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
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8.0,
            children: [
              _MenuContextual(),
              Text('Pestaña de Compras')
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
            icon: Icon(Icons.ballot),
            label: Text('Compras sugeridas'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.assignment),
            label: Text('Lista de compras'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.content_paste),
            label: Text('Ordenes de compra'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.local_shipping),
            label: Text('proveedores'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.work_history),
            label: Text('Historico de compras'),
            onPressed: () {
              
            }
          ),
        ],
      ),
    );
  }
}