import 'package:flutter/material.dart';
import 'package:myapp/pantallas/menu_principal.dart';



void main() {
  runApp(const AppCafeteria());
}

class AppCafeteria extends StatelessWidget {
  const AppCafeteria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafetería App',
      home: const MenuPrincipal(),
    );
     initialRoute: '/',
      // Aquí declaramos el "mapa" de direcciones de nuestra app
      routes: {
        '/': (context) => const MenuPrincipal(),
        '/detalle': (context) => const DetalleProducto(),
        '/carrito': (context) => const CarritoCompra(),
      },
  }
}

