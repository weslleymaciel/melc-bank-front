import 'package:i18n_extension/i18n_extension.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

extension Localization on String {
//
static var t = Translations("en_us") +
    {
      "en_us": "We are almost there!",
      "pt_br": "Estamos quase lá!",
    } +
    {
      "en_us": "The information collected will be used only to improve your experience with MelcBank. No personal data is provided to third parties.",
      "pt_br": "As informações coletadas serão utilizadas apenas para melhorar sua experiência com MelcBank. Nenhuma dado pessoal é fornecido para terceiros.",
    } +
    {
      "en_us": "Email",
      "pt_br": "E-mail",
    } +
    {
      "en_us": "Name",
      "pt_br": "Nome",
    } +
    {
      "en_us": "Last name",
      "pt_br": "Sobrenome",
    } +
    {
      "en_us": "Date of birth",
      "pt_br": "Data de nascimento",
    } +
    {
      "en_us": "Gender",
      "pt_br": "Gênero",
    } +
    {
      "en_us": "Password",
      "pt_br": "Senha",
    } +
    {
      "en_us": "Repeat password",
      "pt_br": "Repita a senha",
    } +
    {
      "en_us": "Register",
      "pt_br": "Cadastrar",
    } +
    {
      "en_us": "Choose your gender",
      "pt_br": "Escolha seu gênero",
    } +
    {
      "en_us": "Error on gender selection",
      "pt_br": "Houve um erro na seleção do gênero",
    } +
    {
      "en_us": "Female",
      "pt_br": "Feminino",
    } +
    {
      "en_us": "Male",
      "pt_br": "Masculino",
    } +
    {
      "en_us": "Other",
      "pt_br": "Outro",
    }
    ;

String get i18n => localize(this, t);

String fill(List<Object> params) => localizeFill(this, params);

String plural(int value) => localizePlural(value, this, t);

String version(Object modifier) => localizeVersion(modifier, this, t);

Map<String, String> allVersions() => localizeAllVersions(this, t);
}