import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/generated/locale_keys.g.dart';

class WeatherEmpty extends StatelessWidget {
  const WeatherEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('🏙️', style: TextStyle(fontSize: 64)),
        Text(
          LocaleKeys.pleaseSelectCity.tr(),
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
