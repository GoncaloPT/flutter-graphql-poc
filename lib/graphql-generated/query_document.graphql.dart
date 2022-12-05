import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$company_only_id {
  Query$company_only_id({
    this.companies,
    required this.$__typename,
  });

  factory Query$company_only_id.fromJson(Map<String, dynamic> json) {
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$company_only_id(
      companies: (l$companies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$company_only_id$companies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$company_only_id$companies?>? companies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companies = companies;
    _resultData['companies'] = l$companies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companies = companies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companies == null ? null : Object.hashAll(l$companies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$company_only_id) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$companies = companies;
    final lOther$companies = other.companies;
    if (l$companies != null && lOther$companies != null) {
      if (l$companies.length != lOther$companies.length) {
        return false;
      }
      for (int i = 0; i < l$companies.length; i++) {
        final l$companies$entry = l$companies[i];
        final lOther$companies$entry = lOther$companies[i];
        if (l$companies$entry != lOther$companies$entry) {
          return false;
        }
      }
    } else if (l$companies != lOther$companies) {
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

extension UtilityExtension$Query$company_only_id on Query$company_only_id {
  CopyWith$Query$company_only_id<Query$company_only_id> get copyWith =>
      CopyWith$Query$company_only_id(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$company_only_id<TRes> {
  factory CopyWith$Query$company_only_id(
    Query$company_only_id instance,
    TRes Function(Query$company_only_id) then,
  ) = _CopyWithImpl$Query$company_only_id;

  factory CopyWith$Query$company_only_id.stub(TRes res) =
      _CopyWithStubImpl$Query$company_only_id;

  TRes call({
    List<Query$company_only_id$companies?>? companies,
    String? $__typename,
  });
  TRes companies(
      Iterable<Query$company_only_id$companies?>? Function(
              Iterable<
                  CopyWith$Query$company_only_id$companies<
                      Query$company_only_id$companies>?>?)
          _fn);
}

class _CopyWithImpl$Query$company_only_id<TRes>
    implements CopyWith$Query$company_only_id<TRes> {
  _CopyWithImpl$Query$company_only_id(
    this._instance,
    this._then,
  );

  final Query$company_only_id _instance;

  final TRes Function(Query$company_only_id) _then;

  static const _undefined = {};

  TRes call({
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$company_only_id(
        companies: companies == _undefined
            ? _instance.companies
            : (companies as List<Query$company_only_id$companies?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes companies(
          Iterable<Query$company_only_id$companies?>? Function(
                  Iterable<
                      CopyWith$Query$company_only_id$companies<
                          Query$company_only_id$companies>?>?)
              _fn) =>
      call(
          companies: _fn(_instance.companies?.map((e) => e == null
              ? null
              : CopyWith$Query$company_only_id$companies(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$company_only_id<TRes>
    implements CopyWith$Query$company_only_id<TRes> {
  _CopyWithStubImpl$Query$company_only_id(this._res);

  TRes _res;

  call({
    List<Query$company_only_id$companies?>? companies,
    String? $__typename,
  }) =>
      _res;
  companies(_fn) => _res;
}

const documentNodeQuerycompany_only_id = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'company_only_id'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'companies'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'companyID'),
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
]);
Query$company_only_id _parserFn$Query$company_only_id(
        Map<String, dynamic> data) =>
    Query$company_only_id.fromJson(data);

class Options$Query$company_only_id
    extends graphql.QueryOptions<Query$company_only_id> {
  Options$Query$company_only_id({
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
          document: documentNodeQuerycompany_only_id,
          parserFn: _parserFn$Query$company_only_id,
        );
}

class WatchOptions$Query$company_only_id
    extends graphql.WatchQueryOptions<Query$company_only_id> {
  WatchOptions$Query$company_only_id({
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
          document: documentNodeQuerycompany_only_id,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$company_only_id,
        );
}

class FetchMoreOptions$Query$company_only_id extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$company_only_id(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerycompany_only_id,
        );
}

extension ClientExtension$Query$company_only_id on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$company_only_id>> query$company_only_id(
          [Options$Query$company_only_id? options]) async =>
      await this.query(options ?? Options$Query$company_only_id());
  graphql.ObservableQuery<Query$company_only_id> watchQuery$company_only_id(
          [WatchOptions$Query$company_only_id? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$company_only_id());
  void writeQuery$company_only_id({
    required Query$company_only_id data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerycompany_only_id)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$company_only_id? readQuery$company_only_id({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerycompany_only_id)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$company_only_id.fromJson(result);
  }
}

class Query$company_only_id$companies {
  Query$company_only_id$companies({
    required this.companyID,
    required this.$__typename,
  });

  factory Query$company_only_id$companies.fromJson(Map<String, dynamic> json) {
    final l$companyID = json['companyID'];
    final l$$__typename = json['__typename'];
    return Query$company_only_id$companies(
      companyID: (l$companyID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String companyID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyID = companyID;
    _resultData['companyID'] = l$companyID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyID = companyID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$company_only_id$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyID = companyID;
    final lOther$companyID = other.companyID;
    if (l$companyID != lOther$companyID) {
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

extension UtilityExtension$Query$company_only_id$companies
    on Query$company_only_id$companies {
  CopyWith$Query$company_only_id$companies<Query$company_only_id$companies>
      get copyWith => CopyWith$Query$company_only_id$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$company_only_id$companies<TRes> {
  factory CopyWith$Query$company_only_id$companies(
    Query$company_only_id$companies instance,
    TRes Function(Query$company_only_id$companies) then,
  ) = _CopyWithImpl$Query$company_only_id$companies;

  factory CopyWith$Query$company_only_id$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$company_only_id$companies;

  TRes call({
    String? companyID,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$company_only_id$companies<TRes>
    implements CopyWith$Query$company_only_id$companies<TRes> {
  _CopyWithImpl$Query$company_only_id$companies(
    this._instance,
    this._then,
  );

  final Query$company_only_id$companies _instance;

  final TRes Function(Query$company_only_id$companies) _then;

  static const _undefined = {};

  TRes call({
    Object? companyID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$company_only_id$companies(
        companyID: companyID == _undefined || companyID == null
            ? _instance.companyID
            : (companyID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$company_only_id$companies<TRes>
    implements CopyWith$Query$company_only_id$companies<TRes> {
  _CopyWithStubImpl$Query$company_only_id$companies(this._res);

  TRes _res;

  call({
    String? companyID,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$a_minha {
  Subscription$a_minha({this.onQuizChange});

  factory Subscription$a_minha.fromJson(Map<String, dynamic> json) {
    final l$onQuizChange = json['onQuizChange'];
    return Subscription$a_minha(
        onQuizChange: l$onQuizChange == null
            ? null
            : Subscription$a_minha$onQuizChange.fromJson(
                (l$onQuizChange as Map<String, dynamic>)));
  }

  final Subscription$a_minha$onQuizChange? onQuizChange;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$onQuizChange = onQuizChange;
    _resultData['onQuizChange'] = l$onQuizChange?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$onQuizChange = onQuizChange;
    return Object.hashAll([l$onQuizChange]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$a_minha) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$onQuizChange = onQuizChange;
    final lOther$onQuizChange = other.onQuizChange;
    if (l$onQuizChange != lOther$onQuizChange) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$a_minha on Subscription$a_minha {
  CopyWith$Subscription$a_minha<Subscription$a_minha> get copyWith =>
      CopyWith$Subscription$a_minha(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$a_minha<TRes> {
  factory CopyWith$Subscription$a_minha(
    Subscription$a_minha instance,
    TRes Function(Subscription$a_minha) then,
  ) = _CopyWithImpl$Subscription$a_minha;

  factory CopyWith$Subscription$a_minha.stub(TRes res) =
      _CopyWithStubImpl$Subscription$a_minha;

  TRes call({Subscription$a_minha$onQuizChange? onQuizChange});
  CopyWith$Subscription$a_minha$onQuizChange<TRes> get onQuizChange;
}

class _CopyWithImpl$Subscription$a_minha<TRes>
    implements CopyWith$Subscription$a_minha<TRes> {
  _CopyWithImpl$Subscription$a_minha(
    this._instance,
    this._then,
  );

  final Subscription$a_minha _instance;

  final TRes Function(Subscription$a_minha) _then;

  static const _undefined = {};

  TRes call({Object? onQuizChange = _undefined}) => _then(Subscription$a_minha(
      onQuizChange: onQuizChange == _undefined
          ? _instance.onQuizChange
          : (onQuizChange as Subscription$a_minha$onQuizChange?)));
  CopyWith$Subscription$a_minha$onQuizChange<TRes> get onQuizChange {
    final local$onQuizChange = _instance.onQuizChange;
    return local$onQuizChange == null
        ? CopyWith$Subscription$a_minha$onQuizChange.stub(_then(_instance))
        : CopyWith$Subscription$a_minha$onQuizChange(
            local$onQuizChange, (e) => call(onQuizChange: e));
  }
}

class _CopyWithStubImpl$Subscription$a_minha<TRes>
    implements CopyWith$Subscription$a_minha<TRes> {
  _CopyWithStubImpl$Subscription$a_minha(this._res);

  TRes _res;

  call({Subscription$a_minha$onQuizChange? onQuizChange}) => _res;
  CopyWith$Subscription$a_minha$onQuizChange<TRes> get onQuizChange =>
      CopyWith$Subscription$a_minha$onQuizChange.stub(_res);
}

const documentNodeSubscriptiona_minha = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'a_minha'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onQuizChange'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Subscription$a_minha _parserFn$Subscription$a_minha(
        Map<String, dynamic> data) =>
    Subscription$a_minha.fromJson(data);

class Options$Subscription$a_minha
    extends graphql.SubscriptionOptions<Subscription$a_minha> {
  Options$Subscription$a_minha({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeSubscriptiona_minha,
          parserFn: _parserFn$Subscription$a_minha,
        );
}

class WatchOptions$Subscription$a_minha
    extends graphql.WatchQueryOptions<Subscription$a_minha> {
  WatchOptions$Subscription$a_minha({
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
          document: documentNodeSubscriptiona_minha,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$a_minha,
        );
}

class FetchMoreOptions$Subscription$a_minha extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$a_minha(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptiona_minha,
        );
}

extension ClientExtension$Subscription$a_minha on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$a_minha>> subscribe$a_minha(
          [Options$Subscription$a_minha? options]) =>
      this.subscribe(options ?? Options$Subscription$a_minha());
  graphql.ObservableQuery<Subscription$a_minha> watchSubscription$a_minha(
          [WatchOptions$Subscription$a_minha? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$a_minha());
}

class Subscription$a_minha$onQuizChange {
  Subscription$a_minha$onQuizChange({required this.title});

  factory Subscription$a_minha$onQuizChange.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    return Subscription$a_minha$onQuizChange(title: (l$title as String));
  }

  final String title;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    return Object.hashAll([l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$a_minha$onQuizChange) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$a_minha$onQuizChange
    on Subscription$a_minha$onQuizChange {
  CopyWith$Subscription$a_minha$onQuizChange<Subscription$a_minha$onQuizChange>
      get copyWith => CopyWith$Subscription$a_minha$onQuizChange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$a_minha$onQuizChange<TRes> {
  factory CopyWith$Subscription$a_minha$onQuizChange(
    Subscription$a_minha$onQuizChange instance,
    TRes Function(Subscription$a_minha$onQuizChange) then,
  ) = _CopyWithImpl$Subscription$a_minha$onQuizChange;

  factory CopyWith$Subscription$a_minha$onQuizChange.stub(TRes res) =
      _CopyWithStubImpl$Subscription$a_minha$onQuizChange;

  TRes call({String? title});
}

class _CopyWithImpl$Subscription$a_minha$onQuizChange<TRes>
    implements CopyWith$Subscription$a_minha$onQuizChange<TRes> {
  _CopyWithImpl$Subscription$a_minha$onQuizChange(
    this._instance,
    this._then,
  );

  final Subscription$a_minha$onQuizChange _instance;

  final TRes Function(Subscription$a_minha$onQuizChange) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined}) =>
      _then(Subscription$a_minha$onQuizChange(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String)));
}

class _CopyWithStubImpl$Subscription$a_minha$onQuizChange<TRes>
    implements CopyWith$Subscription$a_minha$onQuizChange<TRes> {
  _CopyWithStubImpl$Subscription$a_minha$onQuizChange(this._res);

  TRes _res;

  call({String? title}) => _res;
}
