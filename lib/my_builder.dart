import 'package:flutter/material.dart';
import 'package:my_state_builder/my_state.dart';

class MyBuilder<T> extends StatefulWidget {
  final Widget Function(BuildContext context, T state) builder;
  final MyState<T> controller;

  const MyBuilder({Key? key, required this.builder, required this.controller}) : super(key: key);

  @override
  _MyBuilderState<T> createState() => _MyBuilderState<T>();
}

class _MyBuilderState<T> extends State<MyBuilder<T>> {
  @override
  void initState() {
    widget.controller.listen((_) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.controller.state);
  }
}
