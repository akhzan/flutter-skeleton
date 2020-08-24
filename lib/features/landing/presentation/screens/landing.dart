import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/landing_bloc.dart';

class Landing extends StatefulWidget {
  static const String PATH = 'landing';
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  LandingBloc landingBloc;
  @override
  void initState() {
    landingBloc = BlocProvider.of<LandingBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LandingBloc, LandingState>(
        bloc: landingBloc,
        builder: (BuildContext context, LandingState state) {
          if (state is LandingInitial) {
            return buildInitial();
          } else if (state is LandingLoading) {
            return buildLoading();
          } else if (state is LandingLoaded) {
            return buildCenter(state.landing);
          }
          return buildInitial();
        },
      ),
    );
  }

  Widget buildCenter(String temp) {
    return Center(
      child: Text(temp),
    );
  }

  Widget buildInitial() {
    return Center(
      child: FlatButton(
          onPressed: () => landingBloc.add(GetLanding(go: 'Nice')),
          child: Text('Nice')),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
