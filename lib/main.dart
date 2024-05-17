import 'package:rivera0538/my_drawer_header.dart';
import 'package:flutter/material.dart';

import 'package:rivera0538/formularioProductos.dart';
import 'package:rivera0538/tablaProductos.dart';

import 'package:rivera0538/formularioEmpleado.dart';
import 'package:rivera0538/tablaEmpleado.dart';

import 'package:rivera0538/formularioProveedor.dart';
import 'package:rivera0538/tablaProveedor.dart';

import 'package:rivera0538/formularioVentas.dart';
import 'package:rivera0538/tablaVentas.dart';

import 'package:rivera0538/formularioCliente.dart';
import 'package:rivera0538/tablaCliente.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.productos;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.productos) {
      container = FormProductos();
    } else if (currentPage == DrawerSections.empleado) {
      container = FormEmpleado();
    } else if (currentPage == DrawerSections.proveedor) {
      container = FormProveedor();
    } else if (currentPage == DrawerSections.ventas) {
      container = FormVentas();
    } else if (currentPage == DrawerSections.cliente) {
      container = FormCliente();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffdb7b7),
        title: Text("act10 Rivera"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Formulario Productos", Icons.account_balance,
              currentPage == DrawerSections.productos ? true : false),
          menuItem(2, "Formulario Empleado", Icons.assignment_ind,
              currentPage == DrawerSections.empleado ? true : false),
          menuItem(3, "Formulario Proveedor", Icons.directions_ferry,
              currentPage == DrawerSections.proveedor ? true : false),
          menuItem(
              4,
              "Formulario Ventas",
              Icons.production_quantity_limits_sharp,
              currentPage == DrawerSections.ventas ? true : false),
          menuItem(5, "Formulario Cliente", Icons.person,
              currentPage == DrawerSections.cliente ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.productos;
            } else if (id == 2) {
              currentPage = DrawerSections.empleado;
            } else if (id == 3) {
              currentPage = DrawerSections.proveedor;
            } else if (id == 4) {
              currentPage = DrawerSections.ventas;
            } else if (id == 5) {
              currentPage = DrawerSections.cliente;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum DrawerSections {
  productos,
  empleado,
  proveedor,
  ventas,
  cliente,
}
