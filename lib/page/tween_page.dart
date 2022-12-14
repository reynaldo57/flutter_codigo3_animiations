
import 'package:flutter/material.dart';

class TweenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Example"
        ),
      ),
      // body: Center(
      //   child: TweenAnimationBuilder<Color?>(
      //     duration: Duration(milliseconds: 1200),
      //     tween: ColorTween(begin: Colors.redAccent, end: Colors.greenAccent),
      //     builder: (BuildContext context, value, _){
      //       print(value);
      //       return Container(
      //         width: 100,
      //         height: 100,
      //         color: value,
      //       );
      //     },
      //   ),
      // ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              TweenAnimationBuilder<double?>(
                  tween: Tween(begin: 1, end: 0),
                  duration: Duration(milliseconds: 1000),
                  builder: (BuildContext context, value, _){
                    return Transform.translate(
                      offset: Offset(0, -110 * value!),
                      child: Text(
                      "Batman",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    );
                  }),
              TweenAnimationBuilder<double?>(
                  tween: Tween(begin: 1, end: 0),
                  duration: Duration(milliseconds: 1500),
                  builder: (BuildContext context, value, _){
                    return Transform.translate(
                      offset: Offset(-200 * value!, 0),
                      child: Image.asset('assets/images/goku.jpg'),

                    );
                  }),

              TweenAnimationBuilder<double?>(
                  tween: Tween(begin: 1, end: 0),
                  duration: Duration(milliseconds: 2000),
                  builder: (BuildContext context, value, _){
                    return Transform.translate(
                      offset: Offset(0, 100 * value!),
                      child: Text("En Viajes Falabella tienes todo lo que necesitas para tus vacaciones en un solo lugar. Descubre las mejores ofertas de PAQUETES para vivir experiencias inolvidables junto a Viajes Falabella. Tambi??n te ofrecemos la atenci??n personalizada de profesionales expertos en viajes y turismo que te pueden ayudar a encontrar las mejores ofertas para vivir experiencias inolvidables junto a Viajes Falabella. Si quieres hablar con un asesor, puedes visitarnos presencialmente en las sucursales de Viajes Falabella o llamar y comprar por tel??fono. Otra forma en que Falabella Viajes Per?? es perfecta para ti son nuestras formas de financiaci??n. Disfruta tus vacaciones pagando en cuotas sin inter??s y aprovecha las mejores promociones con distintas tarjetas y bancos. ??Con tantas opciones seguro encuentras la oferta que estabas buscando! Comprando un Paquete de Falabella Viajes obtienes en una sola compra, el vuelo + el hotel a un precio m??s econ??mico que si lo comparas por separado. No importa cu??l sea tu destino preferido, si buscas Paquetes a Brasil, a Cuba, Canc??n o Punta Cana. Viajes Falabella Turismo tiene todo lo que buscas para hacer realidad el viaje de tus sue??os. ??Qu?? esperas? ??Compra ya mismo un Paquete Tur??stico para empezar a vivir tus vacaciones junto con Viajes Falabella!"),


                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
