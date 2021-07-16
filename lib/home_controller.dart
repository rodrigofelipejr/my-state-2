import 'package:my_state_builder/my_state.dart';

import 'home_state.dart';

class HomeController extends MyState<HomeState> {
  HomeController() : super(HomeState(status: HomeStatus.empty, count: 0));

  Future<void> incrementCounter() async {
    update(super.state.copyWith(status: HomeStatus.loading));
    await Future.delayed(Duration(seconds: 1));
    update(super.state.copyWith(status: HomeStatus.success, count: ++super.state.count));
  }

  int get count => super.state.count;
}
