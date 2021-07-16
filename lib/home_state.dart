enum HomeStatus { empty, error, loading, success }

class HomeState {
  HomeStatus status;
  int count;

  HomeState({
    required this.status,
    required this.count,
  });
}
