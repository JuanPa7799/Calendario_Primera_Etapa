import 'package:calendar_app_avanzada/model/event_data_source.dart';
import 'package:calendar_app_avanzada/provider/event_provider.dart';
import 'package:calendar_app_avanzada/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;

    return SfCalendar(
      //*Regresa un SfCalendar, que es una vista del widget de calendario ya cargado por la libreria 'package:syncfusion_flutter_calendar/calendar.dart'.
      view: CalendarView
          .month, //* Es el modo de ver el calendario, se puede modificar para verlo de la mejor manera posible.
      dataSource: EventDataSource(events),
      initialSelectedDate: DateTime.now(),
      // headerStyle: CalendarHeaderStyle(
      //     textStyle: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
      //     textAlign: TextAlign.center,
      //     backgroundColor: Colors.grey),
      //cellBorderColor: Colors.transparent,
      onLongPress: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        provider.setDate(details.date!);
        showModalBottomSheet(
          context: context,
          builder: (context) => TasksWidget(),
        );
      },
    );
  }
}
