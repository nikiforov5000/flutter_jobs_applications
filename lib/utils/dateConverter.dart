extension DateConverter on DateTime {
  String toDdMmYy() {
    final day = this.day.toString();
    final month = this.month.toWord();
    final year= this.year.toString();

    return ' $day $month $year';
  }
}

extension IntToMonth on int {
  String toWord() {
    switch (this) {
      case 01 : return 'jan';
      case 02 : return 'feb';
      case 03 : return 'mar';
      case 04 : return 'apr';
      case 05 : return 'may';
      case 06 : return 'jun';
      case 07 : return 'jul';
      case 08 : return 'aug';
      case 09 : return 'sep';
      case 10 : return 'oct';
      case 11 : return 'nov';
      case 12 : return 'dec';
      default : return 'error';
    }
  }
}