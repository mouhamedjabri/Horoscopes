class Horoscopes {
  final sign;
  final date;
  final horoscope;

  Horoscopes ({ this.sign, this.date, this.horoscope});
  factory Horoscopes.fromJson(Map<String,dynamic> json){
    return Horoscopes(
        sign: json["sign"],
        date: json["date"],
        horoscope: json["horoscope"]
    );
  }
}