//Define a vertex
//vertex has a unique index within its graph and holds a piece of data
class Vertex<T> {
  final int index;
  final T data;

  const Vertex({
    required this.index,
    required this.data,
  });

  @override
  String toString() => data.toString();
}

//Define edge
//connects two vertcices and has an optional weight
class Edge<T> {
  final Vertex<T> source;
  final Vertex<T> destination;
  final double? weight;

  const Edge(
    this.source,
    this.destination, [
    this.weight,
  ]);
}

//Defining graph interface
//vertices:returns all of the vertices in the graph
//createVertex:creates a  vertex and adds it to the  graph
//addEdge:connects two vertices in the graph with either a directed or undirected edge.The weight is optional
//weight:returns the weight of the edge between vertices
enum EdgeType { directed, undirected }

abstract class Graph<E> {
  Iterable<Vertex<E>> get vertices;
  Vertex<E> createVertex(E data);

  void addEdge(
    Vertex<E> source,
    Vertex<E> destination, {
    EdgeType edgeType,
    double? weight,
  });

  List<Edge<E>> edges(Vertex<E> source);
  double? weight(
    Vertex<E> source,
    Vertex<E> destination,
  );
}

//implement the graph using adjacency list
class AdjacencyList<E> implements Graph<E> {
  final Map<Vertex<E>, List<Edge<E>>> _connections = {};
  var _nextIndex = 0;
  @override
  Iterable<Vertex<E>> get vertices => _connections.keys;

  //craeting a vertex
  @override
  Vertex<E> createVertex(E data) {
    final vertex = Vertex(index: _nextIndex, data: data);
    _nextIndex++;
    _connections[vertex] = [];
    return vertex;
  }

  //Adding an edge
  @override
  void addEdge(
    Vertex<E> source,
    Vertex<E> destination, {
    EdgeType edgeType = EdgeType.undirected,
    double? weight,
  }) {
    _connections[source]?.add(
      Edge(source, destination, weight),
    );
    if (edgeType == EdgeType.undirected) {
      _connections[destination]?.add(Edge(source, destination, weight));
    }
  }

  //retrieving the edge
  @override
  List<Edge<E>> edges(Vertex<E> source) {
    return _connections[source] ?? [];
  }

  //retrieving weight
  @override
  double? weight(
    Vertex<E> source,
    Vertex<E> destination,
  ) {
    final match = edges(source).where((edge) {
      return edge.destination == destination;
    });
    if (match.isEmpty) return null;
    return match.first.weight;
  }

  @override
  String toString() {
    final result = StringBuffer();
// 1
    _connections.forEach((vertex, edges) {
// 2
      final destinations = edges.map((edge) {
        return edge.destination;
      }).join(', ');
// 3
      result.writeln('$vertex --> $destinations');
    });
    return result.toString();
  }
}

void main() {
  final graph = AdjacencyList<String>();
  final singapore = graph.createVertex('Singapore');
  final tokyo = graph.createVertex('Tokyo');
  final hongKong = graph.createVertex('Hong Kong');
  final detroit = graph.createVertex('Detroit');
  final sanFrancisco = graph.createVertex('San Francisco');
  final washingtonDC = graph.createVertex('Washington DC');
  final austinTexas = graph.createVertex('Austin Texas');
  final seattle = graph.createVertex('Seattle');
  graph.addEdge(singapore, hongKong, weight: 300);
  graph.addEdge(singapore, tokyo, weight: 500);
  graph.addEdge(hongKong, tokyo, weight: 250);
  graph.addEdge(tokyo, detroit, weight: 450);
  graph.addEdge(tokyo, washingtonDC, weight: 300);
  graph.addEdge(hongKong, sanFrancisco, weight: 600);
  graph.addEdge(detroit, austinTexas, weight: 50);
  graph.addEdge(austinTexas, washingtonDC, weight: 292);
  graph.addEdge(sanFrancisco, washingtonDC, weight: 337);
  graph.addEdge(washingtonDC, seattle, weight: 277);
  graph.addEdge(sanFrancisco, seattle, weight: 218);
  graph.addEdge(austinTexas, sanFrancisco, weight: 297);
  print(graph);
}
