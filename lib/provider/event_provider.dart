import 'package:calendar_app_avanzada/model/event.dart';
import 'package:calendar_app_avanzada/utils.dart';
import 'package:flutter/cupertino.dart';

class EventProvider extends ChangeNotifier {
  //* Almacenamos nuestro estado donde queremos tener una lista de eventos y estos eventos son perte de nuestro calendarios.
  final List<Event> _events = [];

  //* Dentro de este clase se crea un metodo getter
  List<Event> get events => _events;

  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void setDate(DateTime date) => _selectedDate = date;

  List<Event> get eventOfSelectedDate => _events;

  //* Tambien se crea un metodo parra agregar un nuevo evento.
  void addEvent(Event event) {
    //* Agregamos el evento a nuestra lista de eventos.
    _events.add(event);
    //* Y se llama aeste notificador de eventos.
    notifyListeners();
  }

  //* Tambien un metodo para editar un evento.
  void editEvent(Event newEvent, Event oldEvent) {
    final index = _events.indexOf(oldEvent);
    _events[index] = newEvent;

    notifyListeners();
  }

  //* Y tambien un metodo para borrar un evento.
  void deleteEvent(Event event) {
    _events.remove(event);

    notifyListeners();
  }
}
