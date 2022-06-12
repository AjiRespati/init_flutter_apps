import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'global_view_models/system_view_model.dart';
// import 'package:van_client/provider.dart';

void main() {
  // setupLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SystemViewModel>(
          create: (_) => SystemViewModel(),
        ),
      ],
      child: const App(),
    ),
  );
}
