import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../../task_list/~graphql/__generated__/todo.fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TodoCreate {
  factory Variables$Mutation$TodoCreate({required Input$TodoInput todo}) =>
      Variables$Mutation$TodoCreate._({
        r'todo': todo,
      });

  Variables$Mutation$TodoCreate._(this._$data);

  factory Variables$Mutation$TodoCreate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$todo = data['todo'];
    result$data['todo'] =
        Input$TodoInput.fromJson((l$todo as Map<String, dynamic>));
    return Variables$Mutation$TodoCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TodoInput get todo => (_$data['todo'] as Input$TodoInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$todo = todo;
    result$data['todo'] = l$todo.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$TodoCreate<Variables$Mutation$TodoCreate>
      get copyWith => CopyWith$Variables$Mutation$TodoCreate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TodoCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$todo = todo;
    final lOther$todo = other.todo;
    if (l$todo != lOther$todo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$todo = todo;
    return Object.hashAll([l$todo]);
  }
}

abstract class CopyWith$Variables$Mutation$TodoCreate<TRes> {
  factory CopyWith$Variables$Mutation$TodoCreate(
    Variables$Mutation$TodoCreate instance,
    TRes Function(Variables$Mutation$TodoCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$TodoCreate;

  factory CopyWith$Variables$Mutation$TodoCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TodoCreate;

  TRes call({Input$TodoInput? todo});
}

class _CopyWithImpl$Variables$Mutation$TodoCreate<TRes>
    implements CopyWith$Variables$Mutation$TodoCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$TodoCreate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TodoCreate _instance;

  final TRes Function(Variables$Mutation$TodoCreate) _then;

  static const _undefined = {};

  TRes call({Object? todo = _undefined}) =>
      _then(Variables$Mutation$TodoCreate._({
        ..._instance._$data,
        if (todo != _undefined && todo != null)
          'todo': (todo as Input$TodoInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TodoCreate<TRes>
    implements CopyWith$Variables$Mutation$TodoCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TodoCreate(this._res);

  TRes _res;

  call({Input$TodoInput? todo}) => _res;
}

class Mutation$TodoCreate {
  Mutation$TodoCreate({
    this.todoCreate,
    required this.$__typename,
  });

  factory Mutation$TodoCreate.fromJson(Map<String, dynamic> json) {
    final l$todoCreate = json['todoCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$TodoCreate(
      todoCreate: l$todoCreate == null
          ? null
          : Mutation$TodoCreate$todoCreate.fromJson(
              (l$todoCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TodoCreate$todoCreate? todoCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$todoCreate = todoCreate;
    _resultData['todoCreate'] = l$todoCreate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$todoCreate = todoCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$todoCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TodoCreate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$todoCreate = todoCreate;
    final lOther$todoCreate = other.todoCreate;
    if (l$todoCreate != lOther$todoCreate) {
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

extension UtilityExtension$Mutation$TodoCreate on Mutation$TodoCreate {
  CopyWith$Mutation$TodoCreate<Mutation$TodoCreate> get copyWith =>
      CopyWith$Mutation$TodoCreate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TodoCreate<TRes> {
  factory CopyWith$Mutation$TodoCreate(
    Mutation$TodoCreate instance,
    TRes Function(Mutation$TodoCreate) then,
  ) = _CopyWithImpl$Mutation$TodoCreate;

  factory CopyWith$Mutation$TodoCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TodoCreate;

  TRes call({
    Mutation$TodoCreate$todoCreate? todoCreate,
    String? $__typename,
  });
  CopyWith$Mutation$TodoCreate$todoCreate<TRes> get todoCreate;
}

class _CopyWithImpl$Mutation$TodoCreate<TRes>
    implements CopyWith$Mutation$TodoCreate<TRes> {
  _CopyWithImpl$Mutation$TodoCreate(
    this._instance,
    this._then,
  );

  final Mutation$TodoCreate _instance;

  final TRes Function(Mutation$TodoCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? todoCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TodoCreate(
        todoCreate: todoCreate == _undefined
            ? _instance.todoCreate
            : (todoCreate as Mutation$TodoCreate$todoCreate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$TodoCreate$todoCreate<TRes> get todoCreate {
    final local$todoCreate = _instance.todoCreate;
    return local$todoCreate == null
        ? CopyWith$Mutation$TodoCreate$todoCreate.stub(_then(_instance))
        : CopyWith$Mutation$TodoCreate$todoCreate(
            local$todoCreate, (e) => call(todoCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$TodoCreate<TRes>
    implements CopyWith$Mutation$TodoCreate<TRes> {
  _CopyWithStubImpl$Mutation$TodoCreate(this._res);

  TRes _res;

  call({
    Mutation$TodoCreate$todoCreate? todoCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$TodoCreate$todoCreate<TRes> get todoCreate =>
      CopyWith$Mutation$TodoCreate$todoCreate.stub(_res);
}

const documentNodeMutationTodoCreate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TodoCreate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'todo')),
        type: NamedTypeNode(
          name: NameNode(value: 'TodoInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'todoCreate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'todo')),
          )
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
Mutation$TodoCreate _parserFn$Mutation$TodoCreate(Map<String, dynamic> data) =>
    Mutation$TodoCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$TodoCreate = FutureOr<void> Function(
  dynamic,
  Mutation$TodoCreate?,
);

class Options$Mutation$TodoCreate
    extends graphql.MutationOptions<Mutation$TodoCreate> {
  Options$Mutation$TodoCreate({
    String? operationName,
    required Variables$Mutation$TodoCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TodoCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$TodoCreate>? update,
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
                    data == null ? null : _parserFn$Mutation$TodoCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTodoCreate,
          parserFn: _parserFn$Mutation$TodoCreate,
        );

  final OnMutationCompleted$Mutation$TodoCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TodoCreate
    extends graphql.WatchQueryOptions<Mutation$TodoCreate> {
  WatchOptions$Mutation$TodoCreate({
    String? operationName,
    required Variables$Mutation$TodoCreate variables,
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
          document: documentNodeMutationTodoCreate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TodoCreate,
        );
}

extension ClientExtension$Mutation$TodoCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TodoCreate>> mutate$TodoCreate(
          Options$Mutation$TodoCreate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TodoCreate> watchMutation$TodoCreate(
          WatchOptions$Mutation$TodoCreate options) =>
      this.watchMutation(options);
}

class Mutation$TodoCreate$HookResult {
  Mutation$TodoCreate$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$TodoCreate runMutation;

  final graphql.QueryResult<Mutation$TodoCreate> result;
}

Mutation$TodoCreate$HookResult useMutation$TodoCreate(
    [WidgetOptions$Mutation$TodoCreate? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$TodoCreate());
  return Mutation$TodoCreate$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TodoCreate> useWatchMutation$TodoCreate(
        WatchOptions$Mutation$TodoCreate options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TodoCreate
    extends graphql.MutationOptions<Mutation$TodoCreate> {
  WidgetOptions$Mutation$TodoCreate({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TodoCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$TodoCreate>? update,
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
                    data == null ? null : _parserFn$Mutation$TodoCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTodoCreate,
          parserFn: _parserFn$Mutation$TodoCreate,
        );

  final OnMutationCompleted$Mutation$TodoCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$TodoCreate
    = graphql.MultiSourceResult<Mutation$TodoCreate> Function(
  Variables$Mutation$TodoCreate, {
  Object? optimisticResult,
});
typedef Builder$Mutation$TodoCreate = widgets.Widget Function(
  RunMutation$Mutation$TodoCreate,
  graphql.QueryResult<Mutation$TodoCreate>?,
);

class Mutation$TodoCreate$Widget
    extends graphql_flutter.Mutation<Mutation$TodoCreate> {
  Mutation$TodoCreate$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TodoCreate? options,
    required Builder$Mutation$TodoCreate builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$TodoCreate(),
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

class Mutation$TodoCreate$todoCreate implements Fragment$todoCardBody_Todo {
  Mutation$TodoCreate$todoCreate({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.$__typename,
  });

  factory Mutation$TodoCreate$todoCreate.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$completed = json['completed'];
    final l$$__typename = json['__typename'];
    return Mutation$TodoCreate$todoCreate(
      id: (l$id as int),
      title: (l$title as String),
      description: (l$description as String),
      completed: (l$completed as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

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
    if (!(other is Mutation$TodoCreate$todoCreate) ||
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

extension UtilityExtension$Mutation$TodoCreate$todoCreate
    on Mutation$TodoCreate$todoCreate {
  CopyWith$Mutation$TodoCreate$todoCreate<Mutation$TodoCreate$todoCreate>
      get copyWith => CopyWith$Mutation$TodoCreate$todoCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TodoCreate$todoCreate<TRes> {
  factory CopyWith$Mutation$TodoCreate$todoCreate(
    Mutation$TodoCreate$todoCreate instance,
    TRes Function(Mutation$TodoCreate$todoCreate) then,
  ) = _CopyWithImpl$Mutation$TodoCreate$todoCreate;

  factory CopyWith$Mutation$TodoCreate$todoCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TodoCreate$todoCreate;

  TRes call({
    int? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TodoCreate$todoCreate<TRes>
    implements CopyWith$Mutation$TodoCreate$todoCreate<TRes> {
  _CopyWithImpl$Mutation$TodoCreate$todoCreate(
    this._instance,
    this._then,
  );

  final Mutation$TodoCreate$todoCreate _instance;

  final TRes Function(Mutation$TodoCreate$todoCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? completed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TodoCreate$todoCreate(
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
      ));
}

class _CopyWithStubImpl$Mutation$TodoCreate$todoCreate<TRes>
    implements CopyWith$Mutation$TodoCreate$todoCreate<TRes> {
  _CopyWithStubImpl$Mutation$TodoCreate$todoCreate(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
  }) =>
      _res;
}
