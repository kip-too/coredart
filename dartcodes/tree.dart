//create a tree node
class TreeNode<T> {
  T value;
  List<TreeNode<T>> children = [];
  TreeNode(this.value);

  void add(TreeNode<T> child) {
    children.add(child);
  }
}

void main() {
  final beverages = TreeNode('Beverages');
  final hot = TreeNode('Hot');
  final cold = TreeNode('Cold');
  beverages.add(hot);
  beverages.add(cold);
}
