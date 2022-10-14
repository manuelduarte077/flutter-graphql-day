import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'todo.fragments.graphql.dart';

class Query$TodosQuery {
  Query$TodosQuery({
    required this.todos,
    required this.$__typename,
  });

  factory Query$TodosQuery.fromJson(Map<String, dynamic> json) {
    final l$todos = json['todos'];
    final l$$__typename = json['__typename'];
    return Query$TodosQuery(
      todos: (l$todos as List<dynamic>)
          .map((e) =>
              Query$TodosQuery$todos.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TodosQuery$todos> todos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$todos = todos;
    _resultData['todos'] = l$todos.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$todos = todos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$todos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TodosQuery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$todos = todos;
    final lOther$todos = other.todos;
    if (l$todos.length != lOther$todos.length) {
      return false;
    }
    for (int i = 0; i < l$todos.length; i++) {
      final l$todos$entry = l$todos[i];
      final lOther$todos$entry = lOther$todos[i];
      if (l$todos$entry != lOther$todos$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TodosQuery on Query$TodosQuery {
  CopyWith$Query$TodosQuery<Query$TodosQuery> get copyWith =>
      CopyWith$Query$TodosQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TodosQuery<TRes> {
  factory CopyWith$Query$TodosQuery(
    Query$TodosQuery instance,
    TRes Function(Query$TodosQuery) then,
  ) = _CopyWithImpl$Query$TodosQuery;

  factory CopyWith$Query$TodosQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$TodosQuery;

  TRes call({
    List<Query$TodosQuery$todos>? todos,
    String? $__typename,
  });
  TRes todos(
      Iterable<Query$TodosQuery$todos> Function(
              Iterable<CopyWith$Query$TodosQuery$todos<Query$TodosQuery$todos>>)
          _fn);
}

class _CopyWithImpl$Query$TodosQuery<TRes>
    implements CopyWith$Query$TodosQuery<TRes> {
  _CopyWithImpl$Query$TodosQuery(
    this._instance,
    this._then,
  );

  final Query$TodosQuery _instance;

  final TRes Function(Query$TodosQuery) _then;

  static const _undefined = {};

  TRes call({
    Object? todos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TodosQuery(
        todos: todos == _undefined || todos == null
            ? _instance.todos
            : (todos as List<Query$TodosQuery$todos>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes todos(
          Iterable<Query$TodosQuery$todos> Function(
                  Iterable<
                      CopyWith$Query$TodosQuery$todos<Query$TodosQuery$todos>>)
              _fn) =>
      call(
          todos: _fn(_instance.todos.map((e) => CopyWith$Query$TodosQuery$todos(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$TodosQuery<TRes>
    implements CopyWith$Query$TodosQuery<TRes> {
  _CopyWithStubImpl$Query$TodosQuery(this._res);

  TRes _res;

  call({
    List<Query$TodosQuery$todos>? todos,
    String? $__typename,
  }) =>
      _res;
  todos(_fn) => _res;
}

const documentNodeQueryTodosQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TodosQuery'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'todos'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'todoCardBody_Todo'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'todoUser_User'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitiontodoCardBody_Todo,
  fragmentDefinitiontodoUser_User,
]);
Query$TodosQuery _parserFn$Query$TodosQuery(Map<String, dynamic> data) =>
    Query$TodosQuery.fromJson(data);

class Options$Query$TodosQuery extends graphql.QueryOptions<Query$TodosQuery> {
  Options$Query$TodosQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryTodosQuery,
          parserFn: _parserFn$Query$TodosQuery,
        );
}

class WatchOptions$Query$TodosQuery
    extends graphql.WatchQueryOptions<Query$TodosQuery> {
  WatchOptions$Query$TodosQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryTodosQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TodosQuery,
        );
}

class FetchMoreOptions$Query$TodosQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TodosQuery({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryTodosQuery,
        );
}

extension ClientExtension$Query$TodosQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TodosQuery>> query$TodosQuery(
          [Options$Query$TodosQuery? options]) async =>
      await this.query(options ?? Options$Query$TodosQuery());
  graphql.ObservableQuery<Query$TodosQuery> watchQuery$TodosQuery(
          [WatchOptions$Query$TodosQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TodosQuery());
  void writeQuery$TodosQuery({
    required Query$TodosQuery data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryTodosQuery)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TodosQuery? readQuery$TodosQuery({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryTodosQuery)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TodosQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TodosQuery> useQuery$TodosQuery(
        [Options$Query$TodosQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$TodosQuery());
graphql.ObservableQuery<Query$TodosQuery> useWatchQuery$TodosQuery(
        [WatchOptions$Query$TodosQuery? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$TodosQuery());

class Query$TodosQuery$Widget extends graphql_flutter.Query<Query$TodosQuery> {
  Query$TodosQuery$Widget({
    widgets.Key? key,
    Options$Query$TodosQuery? options,
    required graphql_flutter.QueryBuilder<Query$TodosQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$TodosQuery(),
          builder: builder,
        );
}

class Query$TodosQuery$todos implements Fragment$todoCardBody_Todo {
  Query$TodosQuery$todos({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.$__typename,
    required this.user,
  });

  factory Query$TodosQuery$todos.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$completed = json['completed'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$TodosQuery$todos(
      id: (l$id as int),
      title: (l$title as String),
      description: (l$description as String),
      completed: (l$completed as bool),
      $__typename: (l$$__typename as String),
      user: Fragment$todoUser_User.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final int id;

  final String title;

  final String description;

  final bool completed;

  final String $__typename;

  final Fragment$todoUser_User user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$completed = completed;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$completed,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TodosQuery$todos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TodosQuery$todos on Query$TodosQuery$todos {
  CopyWith$Query$TodosQuery$todos<Query$TodosQuery$todos> get copyWith =>
      CopyWith$Query$TodosQuery$todos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TodosQuery$todos<TRes> {
  factory CopyWith$Query$TodosQuery$todos(
    Query$TodosQuery$todos instance,
    TRes Function(Query$TodosQuery$todos) then,
  ) = _CopyWithImpl$Query$TodosQuery$todos;

  factory CopyWith$Query$TodosQuery$todos.stub(TRes res) =
      _CopyWithStubImpl$Query$TodosQuery$todos;

  TRes call({
    int? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
    Fragment$todoUser_User? user,
  });
  CopyWith$Fragment$todoUser_User<TRes> get user;
}

class _CopyWithImpl$Query$TodosQuery$todos<TRes>
    implements CopyWith$Query$TodosQuery$todos<TRes> {
  _CopyWithImpl$Query$TodosQuery$todos(
    this._instance,
    this._then,
  );

  final Query$TodosQuery$todos _instance;

  final TRes Function(Query$TodosQuery$todos) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? completed = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$TodosQuery$todos(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        completed: completed == _undefined || completed == null
            ? _instance.completed
            : (completed as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$todoUser_User),
      ));
  CopyWith$Fragment$todoUser_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$todoUser_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$TodosQuery$todos<TRes>
    implements CopyWith$Query$TodosQuery$todos<TRes> {
  _CopyWithStubImpl$Query$TodosQuery$todos(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
    Fragment$todoUser_User? user,
  }) =>
      _res;
  CopyWith$Fragment$todoUser_User<TRes> get user =>
      CopyWith$Fragment$todoUser_User.stub(_res);
}
