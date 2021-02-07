import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rango_app/provider/users_provider.dart';
import 'package:rango_app/routes/app_routes.dart';
import 'package:rango_app/widget/user_tile.dart';

class UserLis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              })
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
