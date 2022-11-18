void mai() {
  String fullname(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullname('Kurgat', ' kiptoo'));
  print(fullname('Kurgat', 'kiptoo', 'Snr Dev'));
}
