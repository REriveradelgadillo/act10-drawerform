import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabProveedor extends StatelessWidget {
  final String id_Proveedor;
  final String empresa;
  final String nacionalidad;
  final String telefono;
  final String ubicacion;
  final String transporte;

  TabProveedor(this.id_Proveedor, this.empresa, this.nacionalidad,
      this.telefono, this.ubicacion, this.transporte,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Proveedor",
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
      DataColumn(label: Text("Id_Proveedor")),
      DataColumn(label: Text(id_Proveedor)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("empresa")),
        DataCell(Text(empresa)),
      ]),
      DataRow(cells: [
        DataCell(Text("nacionalidad")),
        DataCell(Text(nacionalidad)),
      ]),
      DataRow(cells: [
        DataCell(Text("telefono")),
        DataCell(Text(telefono)),
      ]),
      DataRow(cells: [
        DataCell(Text("ubicacion")),
        DataCell(Text(ubicacion)),
      ]),
      DataRow(cells: [
        DataCell(Text("transporte")),
        DataCell(Text(transporte)),
      ]),
    ];
  }
}
