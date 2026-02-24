import 'package:flutter/material.dart';

import 'DetalleProducto.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEBE9),
      appBar: AppBar(
        title: const Text(
          'MENÚ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4E342E),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const TarjetaMenu(
                  titulo: 'Bebidas Calientes',
                  imageUrl: 'https://cdn.agenciasinc.es/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/las-bebidas-muy-calientes-probable-causa-de-cancer-segun-la-oms/5720899-1-esl-MX/Las-bebidas-muy-calientes-probable-causa-de-cancer-segun-la-OMS.jpg',
                ),
                const TarjetaMenu(
                  titulo: 'Bebidas Frías',
                  imageUrl: 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/bebidas_frias.jpg',
                ),
              ],
            ),
            Row(
              children: [
                const TarjetaMenu(
                  titulo: 'Alimentos',
                  imageUrl: 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/alimentos.jpg',
                ),
                const TarjetaMenu(
                  titulo: 'Repostería',
                  imageUrl: 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/reposteria.jpg',
                ),
              ],
            ),
            Row(
              children: [
                const TarjetaMenu(
                  titulo: 'Accesorios',
                  imageUrl: 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/accesrorios.jpg',
                ),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TarjetaMenu extends StatelessWidget {
  final String titulo;
  final String imageUrl;

  const TarjetaMenu({super.key, required this.titulo, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        // Al darle clic, navegamos a la Pantalla 2
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetalleProducto()),
          );
        },
        child: Card(
          color: const Color(0xFFD7CCC8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 3,
          margin: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 150,
                    color: Colors.brown[200],
                    child: const Icon(Icons.coffee),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                child: Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF3E2723),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
