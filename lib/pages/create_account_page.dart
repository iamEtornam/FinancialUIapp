import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 24),
            child: Text(
              'Create Account',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome',style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.black,fontWeight: FontWeight.normal),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
