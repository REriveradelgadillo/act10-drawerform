import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabProductos extends StatelessWidget {
  final String nombre_p;
  final String marca;
  final String codigo_producto;
  final String precio;
  final String talla;
  final String categoria;

  TabProductos(this.nombre_p, this.marca, this.codigo_producto, this.precio,
      this.talla, this.categoria,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Productos",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, count) {
              return _createDataTable();
            }),
      ),
    );
  }

  //
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("Id_Producto")),
      DataColumn(label: Text(nombre_p)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("Nombre")),
        DataCell(Text(marca)),
      ]),
      DataRow(cells: [
        DataCell(Text("codigo_producto")),
        DataCell(Text(codigo_producto)),
      ]),
      DataRow(cells: [
        DataCell(Text("Color")),
        DataCell(Text(precio)),
      ]),
      DataRow(cells: [
        DataCell(Text("Precio")),
        DataCell(Text(talla)),
      ]),
      DataRow(cells: [
        DataCell(Text("Marca")),
        DataCell(Text(categoria)),
      ]),
    ];
  }
}
