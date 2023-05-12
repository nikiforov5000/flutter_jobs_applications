enum Language {
  en,
  ru
}
class CoverLetter {
  Language language;
  String? _body;

  CoverLetter({required this.language});

  get body => _body ?? getGenericText(language);

  getGenericText(Language language) {
    if (language == Language.en) {
      return  enGenericText;
    }
    return ruGenericText;
  }
}