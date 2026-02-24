import 'package:flutter/material.dart';

import 'carrito.dart';

// ---------------------------------------------------------
// PANTALLA 2: DETALLE DEL PRODUCTO (HELADOS)
// ---------------------------------------------------------
class DetalleProducto extends StatelessWidget {
  const DetalleProducto({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?q=80&w=600';

    return Scaffold(
      backgroundColor: const Color(0xFFF5EBE0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4B3621),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'HELADOS',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3E2723),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Helados: tres antojos, sundae de la casa, affogato con espresso y vilatto de yogurt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF8D6E63),
                  height: 1.5,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFD7CCC8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Sundae de la casa', style: TextStyle(color: Color(0xFF3E2723))),
                    trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                  ),
                  Divider(color: Colors.white, indent: 20, endIndent: 20),
                  ListTile(
                    title: Text('Affogato con espresso', style: TextStyle(color: Color(0xFF3E2723))),
                    trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                  ),
                  Divider(color: Colors.white, indent: 20, endIndent: 20),
                  ListTile(
                    title: Text('Vilatto de yogurt', style: TextStyle(color: Color(0xFF3E2723))),
                    trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // BOTÓN PAGAR QUE MANDA A LA PANTALLA 3
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4B3621),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CarritoCompra()),
                );
              },
              child: const Text('PAGAR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
