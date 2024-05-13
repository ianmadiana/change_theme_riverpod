import 'package:change_theme_riverpod/theme.dart';
import 'package:change_theme_riverpod/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(gantiTemaProvider);
    return MaterialApp(
      theme: theme,
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(gantiTemaProvider);
    bool isDarkMode = theme == darkTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Theme'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(Icons.dark_mode_outlined),
                    SizedBox(height: 10),
                    Text('Dark Mode'),
                  ],
                ),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) => value
                      ? ref.read(gantiTemaProvider.notifier).setDark()
                      : ref.read(gantiTemaProvider.notifier).setLight(),
                  activeColor: Colors.amber,
                ),
                const Column(
                  children: [
                    Text('Light Mode'),
                    SizedBox(height: 10),
                    Icon(Icons.light_mode_outlined),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
