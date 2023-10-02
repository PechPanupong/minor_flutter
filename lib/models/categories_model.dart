class CategoriesItem {
  final String title;
  final double count;
  CategoriesItem(this.title, this.count);

  static List<CategoriesItem> getList() {
    return [
      CategoriesItem('Vegetables', 44),
      CategoriesItem('Fruits', 10),
      CategoriesItem('Bread', 32),
      CategoriesItem('Sweets', 22),
      CategoriesItem('Pet', 88),
      CategoriesItem('Car', 88),
    ];
  }
}
