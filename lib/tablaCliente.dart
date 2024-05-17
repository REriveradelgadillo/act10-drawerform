import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabCliente extends StatelessWidget {
  final String id_Cliente;
  final String nombre;
  final String apaterno;
  final String amaterno;
  final String user;
  final String correo;

  TabCliente(this.id_Cliente, this.nombre, this.apaterno, this.amaterno,
      this.user, this.correo,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Cliente",
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
      DataColumn(label: Text("Id_Cliente")),
      DataColumn(label: Text(id_Cliente)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("nombre")),
        DataCell(Text(nombre)),
      ]),
      DataRow(cells: [
        DataCell(Text("apaterno")),
        DataCell(Text(apaterno)),
      ]),
      DataRow(cells: [
        DataCell(Text("amaterno")),
        DataCell(Text(amaterno)),
      ]),
      DataRow(cells: [
        DataCell(Text("user")),
        DataCell(Text(user)),
      ]),
      DataRow(cells: [
        DataCell(Text("correo")),
        DataCell(Text(correo)),
      ]),
    ];
  }
}
