class TreeNode<T> {
  T value;
  TreeNode(this.value);
  List<TreeNode<T>> children = [];
  void addChild(TreeNode<T> child) {
    children.add(child);
  }

  //depthfirst traversal
  void depthFirst(void Function(TreeNode<T> node) traverse) {
    traverse(this);
    for (final child in children) {
      child.depthFirst(traverse);
    }
  }

  //search
  TreeNode? search(T value) {
    TreeNode? result;
    depthFirst((node) {
      if (node.value == value) {
        result = node;
      }
    });
    return result;
  }
}

TreeNode<String> tree() {
  final root = TreeNode('A');
  final b = TreeNode('B');
  final c = TreeNode('C');
  final d = TreeNode('D');
  final e = TreeNode('E');
  final f = TreeNode('F');
  final g = TreeNode('G');
  final h = TreeNode('H');
  final i = TreeNode('I');
  root.addChild(b);
  root.addChild(c);
  b.addChild(d);
  c.addChild(e);
  c.addChild(f);
  e.addChild(g);
  f.addChild(h);
  h.addChild(i);
  return root;
}

void main() {
  final root = tree();
  root.depthFirst((node) => print(node.value));
  print("####################");
  final result1 = root.search('E');
  final result2 = root.search('Z');
  print(result1?.value);
  print(result2?.value);
}
