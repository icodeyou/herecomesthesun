extension CapExtension on String {
  String get capitalize {
    if (length == 0) {
      return "";
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get capitalizeFirstofEach {
    if (length == 0) {
      return "";
    }
    return split(" ").map((str) => str.capitalize).join(" ");
  }
}
