//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Su automóvil ha explotado una llanta en una carretera sinuosa en medio de la nada sin recepción de teléfono celular. Decides hacer autostop. Una camioneta oxidada se detiene a tu lado. Un hombre con un sombrero de ala ancha y ojos desalmados abre la puerta del pasajero y te pregunta: "¿Necesitas que te lleven, muchacho?.',
        choice1: 'Entraré. ¡Gracias por la ayuda!',
        choice2: 'Mejor pregúntale primero si es un asesino.'),
    Story(
        storyTitle: 'Asiente lentamente, sin inmutarse por la pregunta.',
        choice1: 'Al menos él es honesto. Subiré.',
        choice2: 'Espera, sé cómo cambiar un neumático.'),
    Story(
        storyTitle:
            'Cuando comienzas a conducir, el extraño comienza a hablar sobre su relación con su madre. Él se enoja más y más a cada minuto. Te pide que abras la guantera. En el interior encuentras un cuchillo ensangrentado, dos dedos cortados y una cinta de casete de Elton John. Alcanza la guantera. ',
        choice1: '¡Amo a Elton John! Dale la cinta de casete.',
        choice2: '¡Es él o yo! Tomas el cuchillo y lo apuñalas.'),
    Story(
        storyTitle:
            '¿Qué? ¡Qué policía fuera! ¿Sabía que los accidentes de tráfico son la segunda causa principal de muerte accidental para la mayoría de los grupos de edad adulta?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'A medida que atraviesa la barandilla y se precipita hacia las rocas irregulares debajo, reflexiona sobre la dudosa sabiduría de apuñalar a alguien mientras conduce un automóvil en el que se encuentra.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Te relacionas con el asesino mientras canta versos de "¿Puedes sentir el amor esta noche?". Te deja en la siguiente ciudad. Antes de irse, le pregunta si conoce algún buen lugar para tirar los cuerpos. Respondes: "Prueba el muelle".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;
  void nextStory(choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    }
    return false;
  }
}
