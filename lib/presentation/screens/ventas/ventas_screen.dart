import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/widgets/appbar_widget.dart';
import 'package:punto_de_venta/presentation/widgets/drawer_main_widget.dart';
import 'package:punto_de_venta/presentation/widgets/menu_contextual.dart';

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
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8.0,
            children: [
              _MenuContextual(),
              Text('Pestaña de ventas')
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
    return MenuContextual(
      items: [
        MenuItem(
          icon: Icons.add_shopping_cart,
          label: 'Insert Varios',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.shopping_basket,
          label: 'Art.Comun',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.search,
          label: 'Buscar',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.sell,
          label: 'Mayoreo',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.attach_money,
          label: 'Entradas',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.money_off,
          label: 'Salidas',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.remove_shopping_cart,
          label: 'Supr Art.',
          onPressed: () {
            
          }
        ),
        MenuItem(
          icon: Icons.verified,
          label: 'Verificador',
          onPressed: () {
            
          }
        ),
      ],
    );
  }
}