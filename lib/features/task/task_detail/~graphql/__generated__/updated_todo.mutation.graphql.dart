import '../../../task_list/~graphql/__generated__/todo.fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TodoUpdateCompleted {
  factory Variables$Mutation$TodoUpdateCompleted({
    required bool completed,
    required String todoId,
  }) =>
      Variables$Mutation$TodoUpdateCompleted._({
        r'completed': completed,
        r'todoId': todoId,
      });

  Variables$Mutation$TodoUpdateCompleted._(this._$data);

  factory Variables$Mutation$TodoUpdateCompleted.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$completed = data['completed'];
    result$data['completed'] = (l$completed as bool);
    final l$todoId = data['todoId'];
    result$data['todoId'] = (l$todoId as String);
    return Variables$Mutation$TodoUpdateCompleted._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get completed => (_$data['completed'] as bool);
  String get todoId => (_$data['todoId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$completed = completed;
    result$data['completed'] = l$completed;
    final l$todoId = todoId;
    result$data['todoId'] = l$todoId;
    return result$data;
  }

  CopyWith$Variables$Mutation$TodoUpdateCompleted<
          Variables$Mutation$TodoUpdateCompleted>
      get copyWith => CopyWith$Variables$Mutation$TodoUpdateCompleted(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TodoUpdateCompleted) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$todoId = todoId;
    final lOther$todoId = other.todoId;
    if (l$todoId != lOther$todoId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$completed = completed;
    final l$todoId = todoId;
    return Object.hashAll([
      l$completed,
      l$todoId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TodoUpdateCompleted<TRes> {
  factory CopyWith$Variables$Mutation$TodoUpdateCompleted(
    Variables$Mutation$TodoUpdateCompleted instance,
    TRes Function(Variables$Mutation$TodoUpdateCompleted) then,
  ) = _CopyWithImpl$Variables$Mutation$TodoUpdateCompleted;

  factory CopyWith$Variables$Mutation$TodoUpdateCompleted.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TodoUpdateCompleted;

  TRes call({
    bool? completed,
    String? todoId,
  });
}

class _CopyWithImpl$Variables$Mutation$TodoUpdateCompleted<TRes>
    implements CopyWith$Variables$Mutation$TodoUpdateCompleted<TRes> {
  _CopyWithImpl$Variables$Mutation$TodoUpdateCompleted(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TodoUpdateCompleted _instance;

  final TRes Function(Variables$Mutation$TodoUpdateCompleted) _then;

  static const _undefined = {};

  TRes call({
    Object? completed = _undefined,
    Object? todoId = _undefined,
  }) =>
      _then(Variables$Mutation$TodoUpdateCompleted._({
        ..._instance._$data,
        if (completed != _undefined && completed != null)
          'completed': (completed as bool),
        if (todoId != _undefined && todoId != null)
          'todoId': (todoId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TodoUpdateCompleted<TRes>
    implements CopyWith$Variables$Mutation$TodoUpdateCompleted<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TodoUpdateCompleted(this._res);

  TRes _res;

  call({
    bool? completed,
    String? todoId,
  }) =>
      _res;
}

class Mutation$TodoUpdateCompleted {
  Mutation$TodoUpdateCompleted({
    this.todoUpdateCompleted,
    required this.$__typename,
  });

  factory Mutation$TodoUpdateCompleted.fromJson(Map<String, dynamic> json) {
    final l$todoUpdateCompleted = json['todoUpdateCompleted'];
    final l$$__typename = json['__typename'];
    return Mutation$TodoUpdateCompleted(
      todoUpdateCompleted: l$todoUpdateCompleted == null
          ? null
          : Mutation$TodoUpdateCompleted$todoUpdateCompleted.fromJson(
              (l$todoUpdateCompleted as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TodoUpdateCompleted$todoUpdateCompleted? todoUpdateCompleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$todoUpdateCompleted = todoUpdateCompleted;
    _resultData['todoUpdateCompleted'] = l$todoUpdateCompleted?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$todoUpdateCompleted = todoUpdateCompleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$todoUpdateCompleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TodoUpdateCompleted) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$todoUpdateCompleted = todoUpdateCompleted;
    final lOther$todoUpdateCompleted = other.todoUpdateCompleted;
    if (l$todoUpdateCompleted != lOther$todoUpdateCompleted) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TodoUpdateCompleted
    on Mutation$TodoUpdateCompleted {
  CopyWith$Mutation$TodoUpdateCompleted<Mutation$TodoUpdateCompleted>
      get copyWith => CopyWith$Mutation$TodoUpdateCompleted(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TodoUpdateCompleted<TRes> {
  factory CopyWith$Mutation$TodoUpdateCompleted(
    Mutation$TodoUpdateCompleted instance,
    TRes Function(Mutation$TodoUpdateCompleted) then,
  ) = _CopyWithImpl$Mutation$TodoUpdateCompleted;

  factory CopyWith$Mutation$TodoUpdateCompleted.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TodoUpdateCompleted;

  TRes call({
    Mutation$TodoUpdateCompleted$todoUpdateCompleted? todoUpdateCompleted,
    String? $__typename,
  });
  CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes>
      get todoUpdateCompleted;
}

class _CopyWithImpl$Mutation$TodoUpdateCompleted<TRes>
    implements CopyWith$Mutation$TodoUpdateCompleted<TRes> {
  _CopyWithImpl$Mutation$TodoUpdateCompleted(
    this._instance,
    this._then,
  );

  final Mutation$TodoUpdateCompleted _instance;

  final TRes Function(Mutation$TodoUpdateCompleted) _then;

  static const _undefined = {};

  TRes call({
    Object? todoUpdateCompleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TodoUpdateCompleted(
        todoUpdateCompleted: todoUpdateCompleted == _undefined
            ? _instance.todoUpdateCompleted
            : (todoUpdateCompleted
                as Mutation$TodoUpdateCompleted$todoUpdateCompleted?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes>
      get todoUpdateCompleted {
    final local$todoUpdateCompleted = _instance.todoUpdateCompleted;
    return local$todoUpdateCompleted == null
        ? CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted.stub(
            _then(_instance))
        : CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted(
            local$todoUpdateCompleted, (e) => call(todoUpdateCompleted: e));
  }
}

class _CopyWithStubImpl$Mutation$TodoUpdateCompleted<TRes>
    implements CopyWith$Mutation$TodoUpdateCompleted<TRes> {
  _CopyWithStubImpl$Mutation$TodoUpdateCompleted(this._res);

  TRes _res;

  call({
    Mutation$TodoUpdateCompleted$todoUpdateCompleted? todoUpdateCompleted,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes>
      get todoUpdateCompleted =>
          CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted.stub(_res);
}

const documentNodeMutationTodoUpdateCompleted = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TodoUpdateCompleted'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'completed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'todoId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'todoUpdateCompleted'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'completed'),
            value: VariableNode(name: NameNode(value: 'completed')),
          ),
          ArgumentNode(
            name: NameNode(value: 'todoId'),
            value: VariableNode(name: NameNode(value: 'todoId')),
          ),
        ],
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
]);
Mutation$TodoUpdateCompleted _parserFn$Mutation$TodoUpdateCompleted(
        Map<String, dynamic> data) =>
    Mutation$TodoUpdateCompleted.fromJson(data);
typedef OnMutationCompleted$Mutation$TodoUpdateCompleted = FutureOr<void>
    Function(
  dynamic,
  Mutation$TodoUpdateCompleted?,
);

class Options$Mutation$TodoUpdateCompleted
    extends graphql.MutationOptions<Mutation$TodoUpdateCompleted> {
  Options$Mutation$TodoUpdateCompleted({
    String? operationName,
    required Variables$Mutation$TodoUpdateCompleted variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TodoUpdateCompleted? onCompleted,
    graphql.OnMutationUpdate<Mutation$TodoUpdateCompleted>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$TodoUpdateCompleted(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTodoUpdateCompleted,
          parserFn: _parserFn$Mutation$TodoUpdateCompleted,
        );

  final OnMutationCompleted$Mutation$TodoUpdateCompleted? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TodoUpdateCompleted
    extends graphql.WatchQueryOptions<Mutation$TodoUpdateCompleted> {
  WatchOptions$Mutation$TodoUpdateCompleted({
    String? operationName,
    required Variables$Mutation$TodoUpdateCompleted variables,
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
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationTodoUpdateCompleted,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TodoUpdateCompleted,
        );
}

extension ClientExtension$Mutation$TodoUpdateCompleted
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TodoUpdateCompleted>>
      mutate$TodoUpdateCompleted(
              Options$Mutation$TodoUpdateCompleted options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$TodoUpdateCompleted>
      watchMutation$TodoUpdateCompleted(
              WatchOptions$Mutation$TodoUpdateCompleted options) =>
          this.watchMutation(options);
}

class Mutation$TodoUpdateCompleted$HookResult {
  Mutation$TodoUpdateCompleted$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$TodoUpdateCompleted runMutation;

  final graphql.QueryResult<Mutation$TodoUpdateCompleted> result;
}

Mutation$TodoUpdateCompleted$HookResult useMutation$TodoUpdateCompleted(
    [WidgetOptions$Mutation$TodoUpdateCompleted? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$TodoUpdateCompleted());
  return Mutation$TodoUpdateCompleted$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TodoUpdateCompleted>
    useWatchMutation$TodoUpdateCompleted(
            WatchOptions$Mutation$TodoUpdateCompleted options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TodoUpdateCompleted
    extends graphql.MutationOptions<Mutation$TodoUpdateCompleted> {
  WidgetOptions$Mutation$TodoUpdateCompleted({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TodoUpdateCompleted? onCompleted,
    graphql.OnMutationUpdate<Mutation$TodoUpdateCompleted>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$TodoUpdateCompleted(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTodoUpdateCompleted,
          parserFn: _parserFn$Mutation$TodoUpdateCompleted,
        );

  final OnMutationCompleted$Mutation$TodoUpdateCompleted? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$TodoUpdateCompleted
    = graphql.MultiSourceResult<Mutation$TodoUpdateCompleted> Function(
  Variables$Mutation$TodoUpdateCompleted, {
  Object? optimisticResult,
});
typedef Builder$Mutation$TodoUpdateCompleted = widgets.Widget Function(
  RunMutation$Mutation$TodoUpdateCompleted,
  graphql.QueryResult<Mutation$TodoUpdateCompleted>?,
);

class Mutation$TodoUpdateCompleted$Widget
    extends graphql_flutter.Mutation<Mutation$TodoUpdateCompleted> {
  Mutation$TodoUpdateCompleted$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TodoUpdateCompleted? options,
    required Builder$Mutation$TodoUpdateCompleted builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$TodoUpdateCompleted(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$TodoUpdateCompleted$todoUpdateCompleted
    implements Fragment$todoCardBody_Todo {
  Mutation$TodoUpdateCompleted$todoUpdateCompleted({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.$__typename,
  });

  factory Mutation$TodoUpdateCompleted$todoUpdateCompleted.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$completed = json['completed'];
    final l$$__typename = json['__typename'];
    return Mutation$TodoUpdateCompleted$todoUpdateCompleted(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      completed: (l$completed as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final bool completed;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$completed = completed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$completed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TodoUpdateCompleted$todoUpdateCompleted) ||
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
    return true;
  }
}

extension UtilityExtension$Mutation$TodoUpdateCompleted$todoUpdateCompleted
    on Mutation$TodoUpdateCompleted$todoUpdateCompleted {
  CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<
          Mutation$TodoUpdateCompleted$todoUpdateCompleted>
      get copyWith => CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes> {
  factory CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted(
    Mutation$TodoUpdateCompleted$todoUpdateCompleted instance,
    TRes Function(Mutation$TodoUpdateCompleted$todoUpdateCompleted) then,
  ) = _CopyWithImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted;

  factory CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted;

  TRes call({
    String? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes>
    implements CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes> {
  _CopyWithImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted(
    this._instance,
    this._then,
  );

  final Mutation$TodoUpdateCompleted$todoUpdateCompleted _instance;

  final TRes Function(Mutation$TodoUpdateCompleted$todoUpdateCompleted) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? completed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TodoUpdateCompleted$todoUpdateCompleted(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
      ));
}

class _CopyWithStubImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes>
    implements CopyWith$Mutation$TodoUpdateCompleted$todoUpdateCompleted<TRes> {
  _CopyWithStubImpl$Mutation$TodoUpdateCompleted$todoUpdateCompleted(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
  }) =>
      _res;
}
