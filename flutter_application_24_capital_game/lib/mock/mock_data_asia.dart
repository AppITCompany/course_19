import 'package:flutter_application_24_capital_game/models/capital_question.dart';

const List<CapitalQuestion> asiaMockData = [
  bishkek,
  tokyo,
  beijing,
  seoul,
  bangkok,
  delhi,
  hanoi,
  kualaLumpur,
  jakarta,
  manila,
];

const bishkekImage =
    'https://i0.wp.com/mytravelation.com/wp-content/uploads/2023/11/Ala-Too-Square-Bishkek.jpg?resize=683%2C512&ssl=1';
const bishkek = CapitalQuestion(
  cityName: 'Bishkek',
  imageUrl: bishkekImage,
  anwers: [
    Answer(text: 'Kyrgyzstan', isCorrect: true),
    Answer(text: 'Kazahkstan'),
    Answer(text: 'Uzbekistan'),
    Answer(text: 'Tajikistan'),
  ],
);

const tokyoImage = 'https://media.nomadicmatt.com/2024/tokyothings.jpeg';
const tokyo = CapitalQuestion(
  cityName: 'Tokyo',
  imageUrl: tokyoImage,
  anwers: [
    Answer(text: 'China'),
    Answer(text: 'South Korea'),
    Answer(text: 'Japan', isCorrect: true),
    Answer(text: 'Thailand'),
  ],
);

const beijingImage = 'https://qph.cf2.quoracdn.net/main-qimg-21cf2f7fb10c1dc69fb995c21c643a68-lq';
const beijing = CapitalQuestion(
  cityName: 'Beijing',
  imageUrl: beijingImage,
  anwers: [
    Answer(text: 'Japan'),
    Answer(text: 'Vietnam'),
    Answer(text: 'Mongolia'),
    Answer(text: 'China', isCorrect: true),
  ],
);

const seoulImage = 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/3f/7e/a0/caption.jpg?w=1200&h=1600&s=1';
const seoul = CapitalQuestion(
  cityName: 'Seoul',
  imageUrl: seoulImage,
  anwers: [
    Answer(text: 'North Korea'),
    Answer(text: 'Japan'),
    Answer(text: 'South Korea', isCorrect: true),
    Answer(text: 'China'),
  ],
);

const bangkokImage = 'https://files.world.thaipbs.or.th/2023/08/main-2.png';
const bangkok = CapitalQuestion(
  cityName: 'Bangkok',
  imageUrl: bangkokImage,
  anwers: [
    Answer(text: 'Thailand', isCorrect: true),
    Answer(text: 'Laos'),
    Answer(text: 'Myanmar'),
    Answer(text: 'Cambodia'),
  ],
);

const delhiImage = 'https://media.tacdn.com/media/attractions-splice-spp-360x240/07/2c/06/2c.jpg';
const delhi = CapitalQuestion(
  cityName: 'New Delhi',
  imageUrl: delhiImage,
  anwers: [
    Answer(text: 'Pakistan'),
    Answer(text: 'Nepal'),
    Answer(text: 'Sri Lanka'),
    Answer(text: 'India', isCorrect: true),
  ],
);

const hanoiImage = 'https://upload.wikimedia.org/wikipedia/commons/1/10/Hanoi_Skyline_-_NKS.jpg';
const hanoi = CapitalQuestion(
  cityName: 'Hanoi',
  imageUrl: hanoiImage,
  anwers: [
    Answer(text: 'Laos'),
    Answer(text: 'Vietnam', isCorrect: true),
    Answer(text: 'Cambodia'),
    Answer(text: 'Thailand'),
  ],
);

const kualaLumpurImage = 'https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/b1/ac/e8.jpg';
const kualaLumpur = CapitalQuestion(
  cityName: 'Kuala Lumpur',
  imageUrl: kualaLumpurImage,
  anwers: [
    Answer(text: 'Indonesia'),
    Answer(text: 'Singapore'),
    Answer(text: 'Malaysia', isCorrect: true),
    Answer(text: 'Brunei'),
  ],
);

const jakartaImage =
    'https://content.r9cdn.net/rimg/dimg/1b/61/ad879e55-city-22380-17ea1cf2107.jpg?width=1366&height=768&xhint=1472&yhint=1268&crop=true';
const jakarta = CapitalQuestion(
  cityName: 'Jakarta',
  imageUrl: jakartaImage,
  anwers: [
    Answer(text: 'Malaysia'),
    Answer(text: 'Philippines'),
    Answer(text: 'Indonesia', isCorrect: true),
    Answer(text: 'Thailand'),
  ],
);

const manilaImage =
    'https://content.r9cdn.net/rimg/dimg/f6/a7/9b99082b-city-29645-166c0b3c28a.jpg?width=1366&height=768&xhint=2567&yhint=1862&crop=true';
const manila = CapitalQuestion(
  cityName: 'Manila',
  imageUrl: manilaImage,
  anwers: [
    Answer(text: 'Vietnam'),
    Answer(text: 'Philippines', isCorrect: true),
    Answer(text: 'Malaysia'),
    Answer(text: 'Indonesia'),
  ],
);
