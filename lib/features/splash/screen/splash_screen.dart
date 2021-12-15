import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/util/bloc/theme/theme_bloc.dart';
import '/features/splash/widget/change_theme_switch.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Go to Home',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Text(
              'Change Theme',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return ChangeThemeSwitch(
                  value: state.currentTheme.brightness == Brightness.dark,
                  onChanged: (_) {
                    BlocProvider.of<ThemeBloc>(context).add(
                      ToggleTheme(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
