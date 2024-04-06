import 'package:flutter/widgets.dart';
import 'package:first_test/app/app.dart';
import 'package:first_test/home/home.dart';
import 'package:first_test/onboarding/onboarding.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.onboardingRequired:
      return [OnboardingPage.page()];
    case AppStatus.unauthenticated:
    case AppStatus.authenticated:
      return [HomePage.page()];
  }
}
