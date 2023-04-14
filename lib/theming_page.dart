import 'package:flutter/material.dart';

import 'theming_store.dart';

class ThemingPage extends StatefulWidget {
  const ThemingPage(
    this.themingStore, {
    super.key,
  });

  final ThemingStore themingStore;

  @override
  State<ThemingPage> createState() => _ThemingPageState();
}

class _ThemingPageState extends State<ThemingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Theming'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Theming settings',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'You can switch between light and dark',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () => widget.themingStore.changeTheme([ThemeOption.dark]),
                    icon: const Icon(Icons.dark_mode),
                    label: const Text(
                      'DARK',
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton.icon(
                    onPressed: () => widget.themingStore.changeTheme([ThemeOption.light]),
                    icon: const Icon(Icons.light_mode),
                    label: const Text(
                      'LIGHT',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
