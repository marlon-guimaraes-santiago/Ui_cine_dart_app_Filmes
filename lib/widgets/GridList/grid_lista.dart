import 'package:cine_dart_ui/telas/filmes.dart';
import 'package:cine_dart_ui/widgets/GridList/db.dart';
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {

  List<Filmes> filmes = [
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/w8Hi3GI4q1oR6EImrDWrAQFn8Ha.jpg",
        descricao:
        "Sinopse: Após os eventos de “Vingadores: Ultimato”, Sam Wilson/Falcão e Bucky Barnes/Soldado Invernal se unem em uma aventura que testa suas habilidades – e a paciência.",
        nome: " Falcão e o Soldado Invernal"),
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/eLT8Cu357VOwBVTitkmlDEg32Fs.jpg",
        descricao:
        "Sinopse: Uma antiga ordem de experientes lutadores de Jiu Jitsu enfrenta temíveis invasores alienígenas em uma batalha pela Terra a cada seis anos.",
        nome: "Jiu Jitsu"),
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/u2IZcVw0tclP7UOusTVtI5J6rmx.jpg",
        descricao:
        "Sinopse: Refugiado em um ferro-velho na Califórnia, Bumblebee, machucado e sem condição de uso, é encontrado e consertado pela jovem Charlie. Quando Bee ganha vida, porém, ela percebe que seu novo amigo é bem mais do que um simples automóvel.",
        nome: "Bumblebee "),
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/1z1OVCvzdqkgeYZvZCqhznUzYf2.jpg",
        descricao:
        "Sinopse: O motorista de caminhão Joe (Nicolas Cage) vive assombrado pela morte da sua esposa e de seu filho. Até que ele conhece Julie (Franka Potente), uma mulher com dons espirituais e que o ajuda a encontrar a alma perdida de Billie (Penelope Mitchell), sua filha que está em coma. Mas as coisas acabam não saindo como planejado.",
        nome: "Entre Mundos "),
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/sSexW1VKH16EynHXnOinTYT0cpQ.jpg",
        descricao:
        "Sinopse: Situado na década de 1980, um jovem ítalo-americano se apaixona por uma menina judia de Long Island",
        nome: "Cruise"),
    Filmes(
        image: "https://image.tmdb.org/t/p/w342/60q5ai3Zjc9ujFcCMOvgmp4EWhC.jpg",
        descricao:
        "Sinopse: O agente especial Danny (Jason Statham), embora quisesse desistir de seu profissionalismo na arte de matar, foi forçado a fazer um último serviço para garantir a sobrevivência de seu antigo parceiro de missões secretas Hunter (Robet De Niro). Para isso, ele deverá vingar um poderoso xeque do petróleo que teve seu três filhos assassinados por três agentes das forças especiais britânicas SAS. Contudo, Spike (Clive Owen), um poderoso ex-membro do grupo, está disposto a defender seus antigos parceiros e não medirá esforços para eliminar seu novo oponente.",
        nome: "Os Especialistas"),

  ];


  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      physics: ClampingScrollPhysics(),
      crossAxisCount:3,
      shrinkWrap: true,
      childAspectRatio: 1 / 1.40,
      children: filmes.map((filmes) {
        return Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: filmes.image,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image(
                        image: NetworkImage(filmes.image),
                      ),
                    ),
                  ),
                  Text(
                    filmes.nome,
                    overflow: TextOverflow.ellipsis,
                   // maxLines: 3,
                  ),
                  Divider(color: Colors.deepPurple,)
                ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilmesPage(
                          filme: filmes,
                        ),
                      ));
                },
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
