extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) {
    // THIS JUST CHANGE TO UPPER THE FIRST LETTER IF THE WORD IS > 2 LETTERS
    // IT PREVENTS TO CAPITALIZE THE 'de' IN SPANISH, EXAMPLE: Diciembre de 2021
    if (str.length > 2) {
      return str.toCapitalized();
    } else {
      return str;
    }
  }).join(' ');
}