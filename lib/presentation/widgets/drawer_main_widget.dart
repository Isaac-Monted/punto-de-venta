
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: colors.primary),
            child: Text('Menu principal', style: TextStyle(color: colors.surface, fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text('Clientes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/cliente');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Compras'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/compra');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuraciones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/configuracion');
            },
          ),
          ListTile(
            leading: const Icon(Icons.difference),
            title: const Text('Cortes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/corte');
            },
          ),
          ListTile(
            leading: const Icon(Icons.credit_card_sharp),
            title: const Text('Creditos'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/credito');
            },
          ),
          ListTile(
            leading: const Icon(Icons.fact_check),
            title: const Text('Facturas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/factura');
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.paste_rounded),
            title: const Text('Inventarios'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/inventario');
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: const Text('Productos'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/producto');
            },
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Reportes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/reporte');
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text('Ventas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/venta');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesion'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          // Agrega más opciones aquí
        ],
      ),
    );
  }
}
