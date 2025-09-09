
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punto_de_venta/config/routes/app_routes.dart';
import 'package:punto_de_venta/config/themes/app_theme.dart';
import 'package:punto_de_venta/presentation/providers/clientes_provider.dart';
import 'package:punto_de_venta/presentation/providers/compras_provider.dart';
import 'package:punto_de_venta/presentation/providers/configuracion_provider.dart';
import 'package:punto_de_venta/presentation/providers/corte_provider.dart';
import 'package:punto_de_venta/presentation/providers/creditos_provider.dart';
import 'package:punto_de_venta/presentation/providers/facturas_provider.dart';
import 'package:punto_de_venta/presentation/providers/home_provider.dart';
import 'package:punto_de_venta/presentation/providers/inventario_provider.dart';
import 'package:punto_de_venta/presentation/providers/login_provider.dart';
import 'package:punto_de_venta/presentation/providers/productos_provider.dart';
import 'package:punto_de_venta/presentation/providers/reportes_provider.dart';
import 'package:punto_de_venta/presentation/providers/ventas_provider.dart';

void main () => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ClientesProvider()),
        ChangeNotifierProvider(create: (_) => ComprasProvider()),
        ChangeNotifierProvider(create: (_) => ConfiguracionProvider()),
        ChangeNotifierProvider(create: (_) => CorteProvider()),
        ChangeNotifierProvider(create: (_) => CreditosProvider()),
        ChangeNotifierProvider(create: (_) => FacturasProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => InventarioProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => ProductosProvider()),
        ChangeNotifierProvider(create: (_) => ReportesProvider()),
        ChangeNotifierProvider(create: (_) => VentasProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Punto de Venta',
        theme: AppTheme(selectedColor: 4, selecterBrightness: 0).theme(),
        initialRoute: Routes.home,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}