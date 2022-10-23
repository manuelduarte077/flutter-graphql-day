import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$todoCardBody_Todo {
  Fragment$todoCardBody_Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.$__typename,
  });

  factory Fragment$todoCardBody_Todo.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$completed = json['completed'];
    final l$$__typename = json['__typename'];
    return Fragment$todoCardBody_Todo(
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
    if (!(other is Fragment$todoCardBody_Todo) ||
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

extension UtilityExtension$Fragment$todoCardBody_Todo
    on Fragment$todoCardBody_Todo {
  CopyWith$Fragment$todoCardBody_Todo<Fragment$todoCardBody_Todo>
      get copyWith => CopyWith$Fragment$todoCardBody_Todo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$todoCardBody_Todo<TRes> {
  factory CopyWith$Fragment$todoCardBody_Todo(
    Fragment$todoCardBody_Todo instance,
    TRes Function(Fragment$todoCardBody_Todo) then,
  ) = _CopyWithImpl$Fragment$todoCardBody_Todo;

  factory CopyWith$Fragment$todoCardBody_Todo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$todoCardBody_Todo;

  TRes call({
    String? id,
    String? title,
    String? description,
    bool? completed,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$todoCardBody_Todo<TRes>
    implements CopyWith$Fragment$todoCardBody_Todo<TRes> {
  _CopyWithImpl$Fragment$todoCardBody_Todo(
    this._instance,
    this._then,
  );

  final Fragment$todoCardBody_Todo _instance;

  final TRes Function(Fragment$todoCardBody_Todo) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? completed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$todoCardBody_Todo(
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

class _CopyWithStubImpl$Fragment$todoCardBody_Todo<TRes>
    implements CopyWith$Fragment$todoCardBody_Todo<TRes> {
  _CopyWithStubImpl$Fragment$todoCardBody_Todo(this._res);

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

const fragmentDefinitiontodoCardBody_Todo = FragmentDefinitionNode(
  name: NameNode(value: 'todoCardBody_Todo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Todo'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'completed'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmenttodoCardBody_Todo = DocumentNode(definitions: [
  fragmentDefinitiontodoCardBody_Todo,
]);

extension ClientExtension$Fragment$todoCardBody_Todo on graphql.GraphQLClient {
  void writeFragment$todoCardBody_Todo({
    required Fragment$todoCardBody_Todo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'todoCardBody_Todo',
            document: documentNodeFragmenttodoCardBody_Todo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$todoCardBody_Todo? readFragment$todoCardBody_Todo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'todoCardBody_Todo',
          document: documentNodeFragmenttodoCardBody_Todo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$todoCardBody_Todo.fromJson(result);
  }
}

class Fragment$todoUser_User {
  Fragment$todoUser_User({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Fragment$todoUser_User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$todoUser_User(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$todoUser_User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$todoUser_User on Fragment$todoUser_User {
  CopyWith$Fragment$todoUser_User<Fragment$todoUser_User> get copyWith =>
      CopyWith$Fragment$todoUser_User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$todoUser_User<TRes> {
  factory CopyWith$Fragment$todoUser_User(
    Fragment$todoUser_User instance,
    TRes Function(Fragment$todoUser_User) then,
  ) = _CopyWithImpl$Fragment$todoUser_User;

  factory CopyWith$Fragment$todoUser_User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$todoUser_User;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$todoUser_User<TRes>
    implements CopyWith$Fragment$todoUser_User<TRes> {
  _CopyWithImpl$Fragment$todoUser_User(
    this._instance,
    this._then,
  );

  final Fragment$todoUser_User _instance;

  final TRes Function(Fragment$todoUser_User) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$todoUser_User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$todoUser_User<TRes>
    implements CopyWith$Fragment$todoUser_User<TRes> {
  _CopyWithStubImpl$Fragment$todoUser_User(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitiontodoUser_User = FragmentDefinitionNode(
  name: NameNode(value: 'todoUser_User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmenttodoUser_User = DocumentNode(definitions: [
  fragmentDefinitiontodoUser_User,
]);

extension ClientExtension$Fragment$todoUser_User on graphql.GraphQLClient {
  void writeFragment$todoUser_User({
    required Fragment$todoUser_User data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'todoUser_User',
            document: documentNodeFragmenttodoUser_User,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$todoUser_User? readFragment$todoUser_User({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'todoUser_User',
          document: documentNodeFragmenttodoUser_User,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$todoUser_User.fromJson(result);
  }
}
