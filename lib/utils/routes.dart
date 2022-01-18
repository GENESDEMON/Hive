import 'dart:io';

import 'package:flutter/cupertino.dart';

class RouteNavigators {
  static routeReplace(BuildContext context, [Widget? route]) {
    Navigator.of(context).pushReplacement(
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (_) {
                return route!;
              },
            )
          : PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return route!;
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
    );
  }

  static routeNoWayHome(BuildContext context, [Widget? route]) {
    Navigator.pushAndRemoveUntil(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (_) {
                return route!;
              },
            )
          : PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return route!;
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
      (route) => false,
    );
  }

  static route(BuildContext context, [Widget? route]) {
    Navigator.of(context).push(
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (_) {
                return route!;
              },
            )
          : PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return route!;
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
    );
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}
