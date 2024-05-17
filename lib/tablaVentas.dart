import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabVentas extends StatelessWidget {
  final String codigo_producto;
  final String cantidad_p;
  final String precioTotal;
  final String id_cliente;
  final String id_empleado;
  final String cp;

  TabVentas(this.codigo_producto, this.cantidad_p, this.precioTotal,
      this.id_cliente, this.id_empleado, this.cp,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Ventas",
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
      DataColumn(label: Text(codigo_producto)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("cantidad_p")),
        DataCell(Text(cantidad_p)),
      ]),
      DataRow(cells: [
        DataCell(Text("precioTotal")),
        DataCell(Text(precioTotal)),
      ]),
      DataRow(cells: [
        DataCell(Text("id_cliente")),
        DataCell(Text(id_cliente)),
      ]),
      DataRow(cells: [
        DataCell(Text("id_Empleado")),
        DataCell(Text(id_empleado)),
      ]),
      DataRow(cells: [
        DataCell(Text("cp")),
        DataCell(Text(cp)),
      ]),
    ];
  }
}
