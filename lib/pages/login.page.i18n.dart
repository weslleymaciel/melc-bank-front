import 'package:i18n_extension/i18n_extension.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

extension Localization on String {
//
static var t = Translations("en_us") +
    {
      "en_us": "Email",
      "pt_br": "E-mail",
    } +
    {
      "en_us": "Password",
      "pt_br": "Senha",
    } +
    {
      "en_us": "Reset password",
      "pt_br": "Recuperar senha",
    } +
    {
      "en_us": "Enter",
      "pt_br": "Entrar",
    } +
    {
      "en_us": "Ready to transfer a lot of money today?",
      "pt_br": "Preparado para transferir muito dinheiro hoje?",
    } +
    {
      "en_us": "I want to register on MelcBank!",
      "pt_br": "Quero me cadastrar no MelcBank!",
    } +
    {
      "en_us": "MelcBank is a tool designed to make your board game matches more fun and interactive.",
      "pt_br": "MelcBank é uma ferramenta desenvolvida para tornar suas partidas de jogos de tabuleiro mais divertidas e interativas.",
    }


    ;

String get i18n => localize(this, t);

String fill(List<Object> params) => localizeFill(this, params);

String plural(int value) => localizePlural(value, this, t);

String version(Object modifier) => localizeVersion(modifier, this, t);

Map<String, String> allVersions() => localizeAllVersions(this, t);
}