import 'package:doctor_app/widgets/prevention_tile.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  static const routeName = '/index';
  _IndexScreen createState() => _IndexScreen();
}

class _IndexScreen extends State<IndexScreen>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: RichText(
            text: TextSpan(
              text: 'med',
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(
                  text: 'ice',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            maxLines: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: height * 0.03),
              Container(
                width: width * 0.5,
                margin: EdgeInsets.only(left: width * 0.04),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'Luchemos contra el ',
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(
                        text: 'COVID-19',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                  maxLines: 2,
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.3,
                width: width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/doctors.jpg'),
                  ),
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.3),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height * 0.01),
                    buildPreventionTile(
                      'assets/images/mask.png',
                      'Usa tapabocas',
                      'Siempre usa tapabocas al salir, estar en contacto con gente enferma o si lo estas, úsalo.',
                      context,
                      height,
                      width,
                    ),
                    SizedBox(height: height * 0.02),
                    buildPreventionTile(
                      'assets/images/hands.png',
                      'Lava bien tus manos',
                      'Es la mejor manera de eliminar el virus, lávalas por 30 segundos, puedes cantar el cumpleaños mientras lo haces',
                      context,
                      height,
                      width,
                    ),
                    SizedBox(height: height * 0.02),
                    buildPreventionTile(
                      'assets/images/alcohol.png',
                      'Desinfecta periódicamente',
                      'Tanto el alcohol como el cloro pueden servir para desinfectar las superficies y los zapatos cuando salgas.',
                      context,
                      height,
                      width,
                    ),
                    SizedBox(height: height * 0.02),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
