part of 'AppPage.dart';

abstract class Routes{
  Routes._();
  static const HOME = _Paths.HOME;
  static const SPLASHSCREEN = _Paths.SPLASHSCREEN;
  static const DETAIL = _Paths.DETAIL;
  static const SEARCH = _Paths.SEARCH;
}

abstract class _Paths{
  _Paths._();

  static const HOME = '/home';
  static const SPLASHSCREEN = '/splashscreen';
  static const DETAIL = '/detail';
  static const SEARCH = '/search';
}