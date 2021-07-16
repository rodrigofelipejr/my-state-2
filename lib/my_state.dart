class MyState<T> {
  T state;
  Function(T)? _listener;

  MyState(
    this.state,
  );

  void listen(Function(T) listener) {
    _listener = listener;
  }

  void update(T newState) {
    this.state = newState;
    if (_listener != null) {
      _listener!(this.state);
    }
  }
}