import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';

class ProductosScreen extends StatelessWidget{
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(tituloPagina: 'Productos'),
      drawer: AppDrawer(),
      body: _ProductosView(),
    );
  }
}

class _ProductosView extends StatelessWidget {
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
              Text('Pestaña de Productos')
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
            label: Text('Nuevo'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.edit),
            label: Text('Modificar'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.delete),
            label: Text('Eliminar'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.warehouse),
            label: Text('departamentos'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.edit_calendar),
            label: Text('Ventas por periodos'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.reviews),
            label: Text('promociones'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.input),
            label: Text('Importar'),
            onPressed: () {
              
            }
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.list_alt),
            label: Text('Catalogo'),
            onPressed: () {
              
            }
          ),
        ],
      ),
    );
  }
}