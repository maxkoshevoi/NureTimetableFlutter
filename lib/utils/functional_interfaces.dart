typedef SingleCallback<T> = void Function(T value);
typedef DoubleCallback<T, V> = void Function(T value1, V value2);

typedef SingleValueCallback<T, R> = R Function(T value);
typedef DoubleValueCallback<T, V, R> = R Function(T value1, V value2);

typedef Supplier<T> = T Function();
