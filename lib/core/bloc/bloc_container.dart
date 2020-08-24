import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/landing/presentation/bloc/landing_bloc.dart';

class BlocContainer extends StatefulWidget {
  final Widget child;
  BlocContainer({this.child});

  @override
  _BlocContainerState createState() => _BlocContainerState();
}

class _BlocContainerState extends State<BlocContainer> {
  LandingBloc landingBloc;

  @override
  void initState() {
    landingBloc = LandingBloc();
    super.initState();
  }

  @override
  void dispose() {
    landingBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiBlocProvider(
          providers: [BlocProvider<LandingBloc>(create: (_) => landingBloc)],
          child: widget.child),
    );
  }
}
