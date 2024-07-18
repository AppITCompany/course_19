class CustomPoint {
  const CustomPoint({
    required this.lat,
    required this.long,
    required this.label,
    required this.id,
  });

  final double lat;
  final double long;
  final String label;
  final int id;
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
);
const europe = CustomPoint(
  lat: 52.578854,
  long: 33.198994,
  label: 'Europe',
  id: 2,
);
const asia = CustomPoint(
  lat: 33.911454,
  long: 95.799410,
  label: 'Asia',
  id: 3,
);
const australia = CustomPoint(
  lat: -25.596948,
  long: 135.903737,
  label: 'Australia',
  id: 4,
);
const nAmerica = CustomPoint(
  lat: 48.325213,
  long: -103.650361,
  label: 'North America',
  id: 5,
);
const sAmerica = CustomPoint(
  lat: -18.169340,
  long: -57.917356,
  label: 'South America',
  id: 6,
);
const antarctica = CustomPoint(
  lat: -84.498344,
  long: 55.989158,
  label: 'Antarctica',
  id: 7,
);
