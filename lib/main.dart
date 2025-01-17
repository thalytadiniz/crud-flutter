import 'package:crud_flutter/providers/users_provider.dart';
import 'package:crud_flutter/routes/user_form.dart';
import 'package:crud_flutter/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crud_flutter/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => UsersProvider(),
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.HOME:(context) => UserList(),
        AppRoutes.USER_FORM: (context) => UserForm()
      },
    ),
    );
  }
}