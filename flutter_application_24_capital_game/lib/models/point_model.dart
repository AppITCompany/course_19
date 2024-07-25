import 'package:flutter_application_24_capital_game/mock/mock_data_africe.dart';
import 'package:flutter_application_24_capital_game/mock/mock_data_asia.dart';
import 'package:flutter_application_24_capital_game/models/capital_question.dart';

class CustomPoint {
  const CustomPoint({
    required this.lat,
    required this.long,
    required this.label,
    required this.id,
    required this.questions,
  });

  final double lat;
  final double long;
  final String label;
  final int id;
  final List<CapitalQuestion> questions;
}

const continents = <CustomPoint>[
  africa,
  europe,
  asia,
  australia,
  nAmerica,
  sAmerica,
  antarctica,
];

const africa = CustomPoint(
  lat: 9.421968,
  long: 20.892375,
  label: 'Africa',
  id: 1,
  questions: africaQuestions,
);
const europe = CustomPoint(
  lat: 52.578854,
  long: 33.198994,
  label: 'Europe',
  id: 2,
  questions: asiaMockData,
);
const asia = CustomPoint(
  lat: 33.911454,
  long: 95.799410,
  label: 'Asia',
  id: 3,
  questions: asiaMockData,
);
const australia = CustomPoint(
  lat: -25.596948,
  long: 135.903737,
  label: 'Australia',
  id: 4,
  questions: asiaMockData,
);
const nAmerica = CustomPoint(
  lat: 48.325213,
  long: -103.650361,
  label: 'North America',
  id: 5,
  questions: asiaMockData,
);
const sAmerica = CustomPoint(
  lat: -18.169340,
  long: -57.917356,
  label: 'South America',
  id: 6,
  questions: asiaMockData,
);
const antarctica = CustomPoint(
  lat: -84.498344,
  long: 55.989158,
  label: 'Antarctica',
  id: 7,
  questions: [],
);
