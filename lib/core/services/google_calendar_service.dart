import 'dart:developer';

import 'package:googleapis/calendar/v3.dart';
import "package:googleapis_auth/auth_io.dart";
import 'package:url_launcher/url_launcher.dart';

class GoogleCalendarService {
  static const _scopes = [CalendarApi.calendarScope];

  void insert(
      {required String title,
      required DateTime startTime,
      required DateTime endTime}) {
    var clientID = ClientId(
        "220641260826-732mti5co13nvl37at1h108es7e0kb7t.apps.googleusercontent.com",
        "");
    clientViaUserConsent(clientID, _scopes, prompt).then((AuthClient client) {
      var calendar = CalendarApi(client);
      calendar.calendarList.list().then((value) => print("VAL________$value"));

      String calendarId = "primary";
      Event event = Event();

      event.summary = title;

      EventDateTime start = EventDateTime();
      start.dateTime = startTime;
      start.timeZone = "GMT+03:00";
      event.start = start;

      EventDateTime end = EventDateTime();
      end.timeZone = "GMT+03:00";
      end.dateTime = endTime;
      event.end = end;
      try {
        calendar.events.insert(event, calendarId).then((value) {
          if (value.status == "confirmed") {
            log('Event added in google calendar');
          } else {
            log("Unable to add event in google calendar");
          }
        });
      } catch (e) {
        log('Error creating event $e');
      }
    });
  }

  void prompt(String url) async {
    print("Please go to the following URL and grant access:");
    print("  => $url");
    print("");

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
