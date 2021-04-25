import 'package:cine_dart_ui/widgets/BottaoNavigationBar/bottao_navigation_bar.dart';
import 'package:cine_dart_ui/widgets/CategoriasSlider.dart';
import 'package:cine_dart_ui/widgets/GridList/grid_lista.dart';
import 'package:cine_dart_ui/widgets/MeuAppBar.dart';
import 'package:cine_dart_ui/widgets/Video.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottaoNavigatioBar(),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35,),
            MeuAppBar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Destaque do Mês',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ),
            video(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lançamentos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 10,),
            CategoriasSlider(),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Filmes e Séries',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ),
            GridList(),
          ],
        ),
      ),
      ),
    );
  }
}
