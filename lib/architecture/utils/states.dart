abstract class AsyncState<T> {}

class LoadingState<T> implements AsyncState<T> {
  final bool isLoading;

  const LoadingState({this.isLoading = true});
}

class SuccessState<T> implements AsyncState<T> {
  final T data;

  const SuccessState(this.data);

  const SuccessState.empty() : data = null;
}

class FailureState<T> implements AsyncState<T> {
  final dynamic failure;

  const FailureState(this.failure);
}
