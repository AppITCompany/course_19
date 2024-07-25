class CapitalQuestion {
  const CapitalQuestion({
    required this.cityName,
    required this.imageUrl,
    required this.anwers,
    this.score = 5,
  });

  final String cityName;
  final String imageUrl;
  final int score;
  final List<Answer> anwers;
}

class Answer {
  const Answer({
    required this.text,
    this.isCorrect = false,
  });

  final String text;
  final bool isCorrect;
}
