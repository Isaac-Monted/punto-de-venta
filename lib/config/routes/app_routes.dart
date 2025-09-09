
import 'package:flutter/material.dart';
import 'package:punto_de_venta/presentation/screens/clientes/clientes_screen.dart';
import 'package:punto_de_venta/presentation/screens/compras/compras_screen.dart';
import 'package:punto_de_venta/presentation/screens/configuracion/configuracion_screen.dart';
import 'package:punto_de_venta/presentation/screens/corte/corte_screen.dart';
import 'package:punto_de_venta/presentation/screens/creditos/creditos_screen.dart';
import 'package:punto_de_venta/presentation/screens/facturas/facturas_screen.dart';
import 'package:punto_de_venta/presentation/screens/home/home_screen.dart';
import 'package:punto_de_venta/presentation/screens/inventario/inventario_screen.dart';
import 'package:punto_de_venta/presentation/screens/login/login_screen.dart';
import 'package:punto_de_venta/presentation/screens/productos/productos_screen.dart';
import 'package:punto_de_venta/presentation/screens/reportes/reportes_screen.dart';
import 'package:punto_de_venta/presentation/screens/ventas/ventas_screen.dart';

class Routes{
  static const String clientes = '/cliente';
  static const String compras = '/compra';
  static const String configuracion = '/configuracion';
  static const String corte = '/corte';
  static const String creditos = '/credito';
  static const String factura = '/factura';
  static const String home = '/home';
  static const String inventario = '/inventario';
  static const String login = '/';
  static const String productos = '/producto';
  static const String reportes = '/reporte';
  static const String ventas = '/venta';
}

class AppRoutes {
  // Metodo para enrutar a la vista requerida
  static Route<dynamic> generateRoute(RouteSettings rute){
    switch(rute.name){
      case Routes.clientes:
        return MaterialPageRoute(builder: (_) => ClientesScreen());
      case Routes.compras:
        return MaterialPageRoute(builder: (_) => ComprasScreen());
      case Routes.configuracion:
        return MaterialPageRoute(builder: (_) => ConfiguracionScreen());
      case Routes.corte:
        return MaterialPageRoute(builder: (_) => CorteScreen());
      case Routes.creditos:
        return MaterialPageRoute(builder: (_) => CreditosScreen());
      case Routes.factura:
        return MaterialPageRoute(builder: (_) => FacturasScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.inventario:
        return MaterialPageRoute(builder: (_) => InventarioScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.productos:
        return MaterialPageRoute(builder: (_) => ProductosScreen());
      case Routes.reportes:
        return MaterialPageRoute(builder: (_) => ReportesScreen());
      case Routes.ventas:
        return MaterialPageRoute(builder: (_) => VentasScreen());
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}