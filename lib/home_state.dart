enum HomeStatus { empty, error, loading, success }

class HomeState {
  HomeStatus status;
  int count;

  HomeState({
    required this.status,
    required this.count,
  });

  HomeState copyWith({
    HomeStatus? status,
    int? count,
  }) {
    return HomeState(
      status: status ?? this.status,
      count: count ?? this.count,
    );
  }
}
