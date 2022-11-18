class Stack<E> {
  final List<E> _storage;
  Stack() : _storage = <E>[];

  push(E element) => _storage.add(element);

  pop() => _storage.removeLast();

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('popped:$element');
  print(stack);
}
