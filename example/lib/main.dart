import 'package:flutter_vanilla/flutter_vanilla.dart';

import 'components/button.page.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return VanillaApp(
      routes: {
        '/': (_) => const HomePage(),
        '/button': (_) => const ButtonPage(),
      },
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return VanillaPageRoute<void>(
          builder: (context) {
            return const Center(
              child: Text('404 - Page not found'),
            );
          },
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      header: const Text('Vanilla Example'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Vanilla!'),
            const SizedBox(height: 16),
            const Text('This is a simple example of a Vanilla app.'),
            const SizedBox(height: 16),
            const Text('Try one of the components below:'),
            const SizedBox(height: 16),
            Button.primary(
              label: 'Buttons Page',
              actions: ButtonActions(
                onTap: () => Navigator.of(context).pushNamed('/button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
