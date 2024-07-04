import 'package:flutter/material.dart';
import 'package:flutter_application_19_news_app/components/degree_widget.dart';
import 'package:flutter_application_19_news_app/components/drawer_button.dart';
import 'package:flutter_application_19_news_app/components/place_and_date_widget.dart';
import 'package:flutter_application_19_news_app/components/scaffold_gradient.dart';
import 'package:flutter_application_19_news_app/components/search_icon_button.dart';
import 'package:flutter_application_19_news_app/components/weather_info.dart';
import 'package:flutter_application_19_news_app/components/weather_tab.dart';
import 'package:flutter_application_19_news_app/theme/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradient(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '-- Weather App --',
          style: AppTextStyles.size22w500,
        ),
        centerTitle: true,
        leading: const SearchIconButton(),
        actions: const [
          CustomDrawerButton(),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: const [
          PlaceAndDateWidget(
            cityName: 'Stockholm',
            countryName: 'Sweden',
            date: 'Tue, Jun 30',
          ),
          DegreeWidget(
            iconPath: 'assets/weather/sunny_rainy.svg',
            degree: '19',
            degreeStatus: 'Rainy',
          ),
          WeatherInfo(
            iconPath: 'assets/icons/rain_fall.svg',
            title: 'RainFall',
            value: '3cm',
          ),
          WeatherInfo(
            iconPath: 'assets/icons/wind.svg',
            title: 'Wind',
            value: '19km/h',
          ),
          WeatherInfo(
            iconPath: 'assets/icons/humidity.svg',
            title: 'Humidity',
            value: '64%',
          ),
          WeatherTab(),
        ],
      ),
    );
  }
}
