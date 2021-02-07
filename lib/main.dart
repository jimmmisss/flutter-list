import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rango_app/provider/users_provider.dart';
import 'package:rango_app/routes/app_routes.dart';
import 'package:rango_app/views/user_form.dart';
import 'package:rango_app/views/user_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (ctx) => Users())],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            AppRoutes.HOME: (_) => UserLis(),
            AppRoutes.USER_FORM: (_) => UserForm()
          },
        ),
    );
  }
}
