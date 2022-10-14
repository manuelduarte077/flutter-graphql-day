class Input$OrderByClause {
  factory Input$OrderByClause({
    required String column,
    required Enum$SortOrder order,
  }) =>
      Input$OrderByClause._({
        r'column': column,
        r'order': order,
      });

  Input$OrderByClause._(this._$data);

  factory Input$OrderByClause.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$column = data['column'];
    result$data['column'] = (l$column as String);
    final l$order = data['order'];
    result$data['order'] = fromJson$Enum$SortOrder((l$order as String));
    return Input$OrderByClause._(result$data);
  }

  Map<String, dynamic> _$data;

  String get column => (_$data['column'] as String);
  Enum$SortOrder get order => (_$data['order'] as Enum$SortOrder);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$column = column;
    result$data['column'] = l$column;
    final l$order = order;
    result$data['order'] = toJson$Enum$SortOrder(l$order);
    return result$data;
  }

  CopyWith$Input$OrderByClause<Input$OrderByClause> get copyWith =>
      CopyWith$Input$OrderByClause(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderByClause) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$column = column;
    final lOther$column = other.column;
    if (l$column != lOther$column) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$column = column;
    final l$order = order;
    return Object.hashAll([
      l$column,
      l$order,
    ]);
  }
}

abstract class CopyWith$Input$OrderByClause<TRes> {
  factory CopyWith$Input$OrderByClause(
    Input$OrderByClause instance,
    TRes Function(Input$OrderByClause) then,
  ) = _CopyWithImpl$Input$OrderByClause;

  factory CopyWith$Input$OrderByClause.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderByClause;

  TRes call({
    String? column,
    Enum$SortOrder? order,
  });
}

class _CopyWithImpl$Input$OrderByClause<TRes>
    implements CopyWith$Input$OrderByClause<TRes> {
  _CopyWithImpl$Input$OrderByClause(
    this._instance,
    this._then,
  );

  final Input$OrderByClause _instance;

  final TRes Function(Input$OrderByClause) _then;

  static const _undefined = {};

  TRes call({
    Object? column = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Input$OrderByClause._({
        ..._instance._$data,
        if (column != _undefined && column != null)
          'column': (column as String),
        if (order != _undefined && order != null)
          'order': (order as Enum$SortOrder),
      }));
}

class _CopyWithStubImpl$Input$OrderByClause<TRes>
    implements CopyWith$Input$OrderByClause<TRes> {
  _CopyWithStubImpl$Input$OrderByClause(this._res);

  TRes _res;

  call({
    String? column,
    Enum$SortOrder? order,
  }) =>
      _res;
}

class Input$TodoInput {
  factory Input$TodoInput({
    required String description,
    required String title,
  }) =>
      Input$TodoInput._({
        r'description': description,
        r'title': title,
      });

  Input$TodoInput._(this._$data);

  factory Input$TodoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$TodoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get description => (_$data['description'] as String);
  String get title => (_$data['title'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$description = description;
    result$data['description'] = l$description;
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$TodoInput<Input$TodoInput> get copyWith =>
      CopyWith$Input$TodoInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TodoInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$title = title;
    return Object.hashAll([
      l$description,
      l$title,
    ]);
  }
}

abstract class CopyWith$Input$TodoInput<TRes> {
  factory CopyWith$Input$TodoInput(
    Input$TodoInput instance,
    TRes Function(Input$TodoInput) then,
  ) = _CopyWithImpl$Input$TodoInput;

  factory CopyWith$Input$TodoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TodoInput;

  TRes call({
    String? description,
    String? title,
  });
}

class _CopyWithImpl$Input$TodoInput<TRes>
    implements CopyWith$Input$TodoInput<TRes> {
  _CopyWithImpl$Input$TodoInput(
    this._instance,
    this._then,
  );

  final Input$TodoInput _instance;

  final TRes Function(Input$TodoInput) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$TodoInput._({
        ..._instance._$data,
        if (description != _undefined && description != null)
          'description': (description as String),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
}

class _CopyWithStubImpl$Input$TodoInput<TRes>
    implements CopyWith$Input$TodoInput<TRes> {
  _CopyWithStubImpl$Input$TodoInput(this._res);

  TRes _res;

  call({
    String? description,
    String? title,
  }) =>
      _res;
}

enum Enum$OrderByRelationAggregateFunction { COUNT, $unknown }

String toJson$Enum$OrderByRelationAggregateFunction(
    Enum$OrderByRelationAggregateFunction e) {
  switch (e) {
    case Enum$OrderByRelationAggregateFunction.COUNT:
      return r'COUNT';
    case Enum$OrderByRelationAggregateFunction.$unknown:
      return r'$unknown';
  }
}

Enum$OrderByRelationAggregateFunction
    fromJson$Enum$OrderByRelationAggregateFunction(String value) {
  switch (value) {
    case r'COUNT':
      return Enum$OrderByRelationAggregateFunction.COUNT;
    default:
      return Enum$OrderByRelationAggregateFunction.$unknown;
  }
}

enum Enum$OrderByRelationWithColumnAggregateFunction {
  AVG,
  COUNT,
  MAX,
  MIN,
  SUM,
  $unknown
}

String toJson$Enum$OrderByRelationWithColumnAggregateFunction(
    Enum$OrderByRelationWithColumnAggregateFunction e) {
  switch (e) {
    case Enum$OrderByRelationWithColumnAggregateFunction.AVG:
      return r'AVG';
    case Enum$OrderByRelationWithColumnAggregateFunction.COUNT:
      return r'COUNT';
    case Enum$OrderByRelationWithColumnAggregateFunction.MAX:
      return r'MAX';
    case Enum$OrderByRelationWithColumnAggregateFunction.MIN:
      return r'MIN';
    case Enum$OrderByRelationWithColumnAggregateFunction.SUM:
      return r'SUM';
    case Enum$OrderByRelationWithColumnAggregateFunction.$unknown:
      return r'$unknown';
  }
}

Enum$OrderByRelationWithColumnAggregateFunction
    fromJson$Enum$OrderByRelationWithColumnAggregateFunction(String value) {
  switch (value) {
    case r'AVG':
      return Enum$OrderByRelationWithColumnAggregateFunction.AVG;
    case r'COUNT':
      return Enum$OrderByRelationWithColumnAggregateFunction.COUNT;
    case r'MAX':
      return Enum$OrderByRelationWithColumnAggregateFunction.MAX;
    case r'MIN':
      return Enum$OrderByRelationWithColumnAggregateFunction.MIN;
    case r'SUM':
      return Enum$OrderByRelationWithColumnAggregateFunction.SUM;
    default:
      return Enum$OrderByRelationWithColumnAggregateFunction.$unknown;
  }
}

enum Enum$SortOrder { ASC, DESC, $unknown }

String toJson$Enum$SortOrder(Enum$SortOrder e) {
  switch (e) {
    case Enum$SortOrder.ASC:
      return r'ASC';
    case Enum$SortOrder.DESC:
      return r'DESC';
    case Enum$SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$SortOrder fromJson$Enum$SortOrder(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortOrder.ASC;
    case r'DESC':
      return Enum$SortOrder.DESC;
    default:
      return Enum$SortOrder.$unknown;
  }
}

enum Enum$Trashed { ONLY, WITH, WITHOUT, $unknown }

String toJson$Enum$Trashed(Enum$Trashed e) {
  switch (e) {
    case Enum$Trashed.ONLY:
      return r'ONLY';
    case Enum$Trashed.WITH:
      return r'WITH';
    case Enum$Trashed.WITHOUT:
      return r'WITHOUT';
    case Enum$Trashed.$unknown:
      return r'$unknown';
  }
}

Enum$Trashed fromJson$Enum$Trashed(String value) {
  switch (value) {
    case r'ONLY':
      return Enum$Trashed.ONLY;
    case r'WITH':
      return Enum$Trashed.WITH;
    case r'WITHOUT':
      return Enum$Trashed.WITHOUT;
    default:
      return Enum$Trashed.$unknown;
  }
}

const possibleTypesMap = {};
