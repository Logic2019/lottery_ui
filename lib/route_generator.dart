import 'package:flutter/material.dart';
import 'package:lottery_ui/ui/choose_number/choose_number.dart';
import 'package:lottery_ui/ui/home/home_page.dart';
import 'package:lottery_ui/ui/payment/payment_page.dart';
import 'package:lottery_ui/ui/results/results.dart';
import 'package:lottery_ui/ui/results/view_results.dart';

///Routing class for page navigation
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      //home page
      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => HomePage());

      //choose number page
      case ChooseNumber.routeName:
        return MaterialPageRoute(builder: (_) => ChooseNumber());

      //PAYMENT page
      case PaymentPage.routeName:
        return MaterialPageRoute(builder: (_) => PaymentPage());

      //results page
      case ResultsPage.routeName:
        return MaterialPageRoute(builder: (_) => ResultsPage());

      //view results page
      case ViewResults.routeName:
        return MaterialPageRoute(builder: (_) => ViewResults());

      default:
        return _errorRoute();
    }
  }

  //error page  .. in-case a route false
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text("Page not Found"),
        ),
      );
    });
  }
}
