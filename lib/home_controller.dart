import 'package:my_state_builder/my_state.dart';

import 'home_state.dart';

class HomeController extends MyState<HomeState> {
  HomeController() : super(HomeState(status: HomeStatus.empty, count: 0));

  Future<void> incrementCounter() async {
    update(HomeState(status: HomeStatus.loading, count: super.state.count));
    await Future.delayed(Duration(seconds: 1));
    update(HomeState(status: HomeStatus.success, count: ++super.state.count));
  }

  int get count => super.state.count;
}
