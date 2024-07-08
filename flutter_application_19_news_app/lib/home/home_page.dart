import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_19_news_app/models/weather_data.dart';
import 'package:http/http.dart';
import 'package:flutter_application_19_news_app/components/degree_widget.dart';
import 'package:flutter_application_19_news_app/components/drawer_button.dart';
import 'package:flutter_application_19_news_app/components/place_and_date_widget.dart';
import 'package:flutter_application_19_news_app/components/scaffold_gradient.dart';
import 'package:flutter_application_19_news_app/components/search_icon_button.dart';
import 'package:flutter_application_19_news_app/components/weather_info.dart';
import 'package:flutter_application_19_news_app/components/weather_tab.dart';
import 'package:flutter_application_19_news_app/theme/app_text_styles.dart';
import 'package:intl/intl.dart';

// https://www.weatherapi.com/docs/conditions.json

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final apiPath = 'https://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q';
  bool isLoading = true;
  WeatherData? data;

  Future<void> _getData() async {
    final uri = Uri.parse('$apiPath=bishkek');
    final response = await Client().get(uri);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      data = WeatherData.fromJson(jsonData);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

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
      body: isLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : ListView(
              children: [
                PlaceAndDateWidget(
                  cityName: data?.location.name ?? '',
                  countryName: data?.location.country ?? '',
                  // date: 'Tue, Jun 30',
                  // date: formatTime(data?.location.localtime),
                  date: data?.location.localtime ?? '',
                ),
                DegreeWidget(
                  iconPath: 'assets/weather/sunny_rainy.svg',
                  degree: data?.current.tempC.toString() ?? '',
                  degreeStatus: data?.current.condition.text ?? '',
                ),
                WeatherInfo(
                  iconPath: 'assets/icons/rain_fall.svg',
                  title: 'RainFall',
                  value: data?.current.precipMm.toString() ?? '',
                ),
                WeatherInfo(
                  iconPath: 'assets/icons/wind.svg',
                  title: 'Wind',
                  value: '${data?.current.windKph}km/h',
                ),
                WeatherInfo(
                  iconPath: 'assets/icons/humidity.svg',
                  title: 'Humidity',
                  value: '${data?.current.humidity}64%',
                ),
                const WeatherTab(),
              ],
            ),
    );
  }

  String formatTime(String? date) {
    if (date != null) {
      final dateTime = DateFormat("dd/MM/yyyy").parse(date);
      return DateFormat.yMMMMd().format(dateTime);
    } else {
      return '';
    }
  }
}
