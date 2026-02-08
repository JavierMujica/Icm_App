import 'package:flutter/material.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/screns/home_screen.dart';

class ImcpResults extends StatelessWidget {
  final double heigth;
  final int age;
  final int weigth;
  final String gender;
  const ImcpResults({
    super.key,
    required this.age,
    required this.heigth,
    required this.weigth,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    double imcResults = weigth / ((heigth / 100) * (heigth / 100));

    return Scaffold(
      appBar: AppBar(
        title: (Text(
          "RESULTADO",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
      ),
      backgroundColor: AppColor.background,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tu Resultados Son",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundComponent,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Text(
                        geTitleImc(imcResults),
                        style: TextStyle(
                          fontSize: 40,
                          color: getColorbyImc(imcResults),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        imcResults.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          getDescriptionImc(imcResults),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(AppColor.primary),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: Text("Finalizar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getColorbyImc(double imcResults) {
    return switch (imcResults) {
      < 18.5 => Colors.blue,
      < 24.9 => Colors.green,
      < 29.99 => Colors.orange,
      _ => Colors.red,
    };
  }

  String geTitleImc(double imcResults) {
    return switch (imcResults) {
      < 18.5 => "Muy buen peso",
      < 24.9 => "Peso Normal",
      < 29.99 => "Pasado de Peso",
      _ => "SobrePeso",
    };
  }

  String getDescriptionImc(double imcResults) {
    return switch (imcResults) {
      < 18.5 =>
        "En este rango, el peso se considera proporcionado respecto a la estatura. Es el estado ideal para minimizar el riesgo de enfermedades cardiovasculares y metabólicas. Se asocia con un equilibrio entre la ingesta de energía y el gasto calórico, permitiendo que los sistemas del cuerpo funcionen con un esfuerzo óptimo.",
      < 24.9 =>
        "Aunque técnicamente sigue siendo un peso saludable, esta categoría se describe a menudo como un punto de transición. Aquí es donde conviene prestar más atención a la composición corporal (masa muscular vs. grasa), ya que un ligero aumento en el estilo de vida sedentario podría desplazar el indicador hacia el sobrepeso",
      < 29.99 =>
        "Se define como un exceso de peso leve en relación con la altura. En esta etapa, el cuerpo comienza a cargar un volumen de grasa mayor al recomendado, lo que puede empezar a ejercer una presión adicional sobre las articulaciones y el sistema circulatorio. Es generalmente el primer llamado de advertencia para ajustar hábitos alimenticios.",
      _ =>
        "En esta descripción, el exceso de peso es notorio y clínico. El riesgo de desarrollar condiciones como hipertensión o resistencia a la insulina aumenta significativamente. Se considera un estado crítico donde la intervención mediante actividad física y nutrición es fundamental para evitar la transición hacia la obesidad.",
    };
  }
}
