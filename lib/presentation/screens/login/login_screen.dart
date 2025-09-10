import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punto_de_venta/presentation/providers/login_provider.dart';
import 'package:punto_de_venta/presentation/widgets/butom_custom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final loginProvider = context.watch<LoginProvider>();

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              Text('Inicio de Sesion', style: TextStyle(fontSize: 30)),
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    helperText: 'Ingrese su usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  obscureText: loginProvider.ocultar,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    helperText: 'Ingrese su contraseña',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon( loginProvider.ocultar
                        ? Icons.visibility
                        : Icons.visibility_off),
                      onPressed: (){
                        loginProvider.visibilitiPassword();
                      })
                  ),
                ),
              ),
              ButomCustom(
                backgroun: colors,
                text: 'Iniciar sesion',
                icon: Icons.login,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                })
            ],
          ),
        ),
      )
    );
  }
}