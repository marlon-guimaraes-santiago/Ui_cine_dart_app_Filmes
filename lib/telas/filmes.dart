import 'package:cine_dart_ui/widgets/GridList/db.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class FilmesPage extends StatelessWidget {
  final Filmes filme;

  FilmesPage({@required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          filme.nome,
          style: TextStyle(

          ),
        ),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: filme.image,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image: NetworkImage(filme.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  filme.nome,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Expanded(
                      child: OutlineButton.icon(
                        icon: Icon(EvaIcons.playCircleOutline),
                        label: Text("Trailer"),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: RaisedButton.icon(
                        textColor: Colors.black,
                        color: Colors.amber,
                        icon: Icon(EvaIcons.playCircleOutline),
                        label: Text("Assistir"),
                        onPressed: (){},
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                child: Text(
                  filme.descricao,
                  style: TextStyle(
                    fontSize: 18,
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
