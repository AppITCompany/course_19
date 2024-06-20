import 'package:flutter/material.dart';
import 'package:flutter_application_16_bmi_app/components/gender_card.dart';
import 'package:flutter_application_16_bmi_app/components/height_card.dart';
import 'package:flutter_application_16_bmi_app/components/value_modifier_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GenderCard(
                    icon: Icons.male,
                    isActive: true,
                    text: 'MALE',
                    onTap: () {},
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GenderCard(
                    icon: Icons.female,
                    text: 'FEMALE',
                    isActive: false,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            HeightCard(
              value: 180,
              onChanged: (v) {},
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ValueModifierCard(
                    modifierName: 'WEIGHT',
                    modifierValue: 60,
                    onDecrement: () {},
                    onIncrement: () {},
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ValueModifierCard(
                    modifierName: 'AGE',
                    modifierValue: 28,
                    onDecrement: () {},
                    onIncrement: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('CALCULATE'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
