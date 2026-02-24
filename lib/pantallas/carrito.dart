import 'package:flutter/material.dart';

class CarritoCompra extends StatelessWidget {
  const CarritoCompra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBE0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Carrito de compra',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Información de entrega con iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Información de entrega',
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Icon(Icons.directions_car, color: Colors.black),
                    SizedBox(width: 10),
                    Icon(Icons.person, color: Colors.black),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            // Coffee Cat con Botón Desplegable
            Row(
              children: [
                const Text('Coffee Cat Tecnológico', style: TextStyle(fontSize: 14)),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  itemBuilder: (context) => [
                    const PopupMenuItem(value: '1', child: Text('Sucursal Norte')),
                    const PopupMenuItem(value: '2', child: Text('Sucursal Centro')),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Contenedor Gris de Tiempo
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Tiempo de llegada aproximadamente', style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: '5 min',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Productos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            // Contenedor de producto seleccionado
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('1x Sundae de la casa - \$50.00'),
            ),
            const Spacer(),
            // Contenedor Final de Saldo y Botones
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFD7CCC8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Text(
                    'Saldo insuficiente',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Total a pagar: \$50.00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Botón que no sirve
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null, // Deshabilitado
                      child: const Text('Recargar'),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('Agregar más'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4B3621)),
                          onPressed: () {},
                          child: const Text('Pagar', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}