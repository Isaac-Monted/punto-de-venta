import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget implements PreferredSizeWidget{
  // Valiables para personalizar la barra de aplicacion
  final String tituloPagina;

  const AppbarCustom({
    super.key,
    required this.tituloPagina
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(tituloPagina),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
        Scaffold.of(context).openDrawer();
      }),
      actions: [
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // o el alto que necesites

}