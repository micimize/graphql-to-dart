mixin HelloMixin {
  String get name {
    throw UnimplementedError('impossible');
  }

  void sayHello() => print(name);
}
