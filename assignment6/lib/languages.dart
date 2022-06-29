import 'package:assignment5/languages/bangla.dart';
import 'package:assignment5/languages/english.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'en_US': english, 'bn_BD': bangla};
}
