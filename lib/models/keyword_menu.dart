List<String> keyMenu = ['Cappucino', 'Machiato', "Latte", 'Milk', 'Tea'];

class KeywordMenu {
  String name;
  bool isActive;

  KeywordMenu({required this.name, this.isActive = false});
}

var keywordMenu = [
  KeywordMenu(name: 'Cappucino', isActive: true),
  KeywordMenu(name: 'Machiato'),
  KeywordMenu(name: 'Latte'),
  // KeywordMenu(name: 'Milk'),
  // KeywordMenu(name: 'Tea'),
];
