import 'package:flutter/material.dart';
import 'package:sober_grid/views/newAppointment.dart';
import 'package:sober_grid/views/requestAppointment.dart';
import 'package:sober_grid/views/Emergency.dart';
import 'package:sober_grid/views/addPsychologist.dart';
import 'package:sober_grid/views/appointments.dart';
import 'package:sober_grid/views/consult.dart';
import 'package:sober_grid/views/home.dart';
import 'package:sober_grid/views/requests.dart';
import 'package:sober_grid/views/newArticle.dart';
import 'package:sober_grid/views/profile.dart';
import 'package:sober_grid/views/safeSpace.dart';
import 'package:sober_grid/views/schedule.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/schedule':
        return MaterialPageRoute(builder: (_) => SchedulePage());
      case '/messages':
        return MaterialPageRoute(builder: (_) => RequestsPage());
      case '/appointments':
        return MaterialPageRoute(builder: (_) => AppointmentsPage());
      case '/addPsychologist':
        return MaterialPageRoute(builder: (_) => AddPsychologistPage());
      case '/Safe space':
        return MaterialPageRoute(builder: (_) => SafeSpacePage());
      case '/Consult':
        return MaterialPageRoute(builder: (_) => ConsultPage());
      case '/Emergency':
        return MaterialPageRoute(builder: (_) => EmergencyPage());
      case '/requestAppointment':
        return MaterialPageRoute(builder: (_) => RequestAppointmentPage());
      case '/newArticle':
        return MaterialPageRoute(builder: (_) => NewArticlePage());
      case '/newAppointment':
        return MaterialPageRoute(builder: (_) => NewAppointmentPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());

    }
  }
}