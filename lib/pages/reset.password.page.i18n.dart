import 'package:i18n_extension/i18n_extension.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

extension Localization on String {
//
static var t = Translations("en_us") +
    {
      "en_us": "Oops, it looks like we missed something important!",
      "pt_br": "Ops, parece que esquemos de algo importante!",
    } +
    {
      "en_us": "Fill in your registration email and we will send you a link to reset your password.",
      "pt_br": "Preencha seu e-mail de cadastro e enviaremos um link para redefinir sua senha.",
    } +
    {
      "en_us": "Email",
      "pt_br": "E-mail",
    } +
    {
      "en_us": "Send",
      "pt_br": "Enviar",
    }
    ;

String get i18n => localize(this, t);

String fill(List<Object> params) => localizeFill(this, params);

String plural(int value) => localizePlural(value, this, t);

String version(Object modifier) => localizeVersion(modifier, this, t);

Map<String, String> allVersions() => localizeAllVersions(this, t);
}