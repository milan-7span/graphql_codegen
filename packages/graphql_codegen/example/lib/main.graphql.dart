import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'scalars.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$FetchPerson {
  factory Variables$FetchPerson({required String id}) =>
      Variables$FetchPerson._({
        r'id': id,
      });

  Variables$FetchPerson._(this._$data);

  factory Variables$FetchPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$FetchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$FetchPerson<Variables$FetchPerson> get copyWith =>
      CopyWith$Variables$FetchPerson(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$FetchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$FetchPerson<TRes> {
  factory CopyWith$Variables$FetchPerson(
    Variables$FetchPerson instance,
    TRes Function(Variables$FetchPerson) then,
  ) = _CopyWithImpl$Variables$FetchPerson;

  factory CopyWith$Variables$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$FetchPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$FetchPerson<TRes>
    implements CopyWith$Variables$FetchPerson<TRes> {
  _CopyWithImpl$Variables$FetchPerson(
    this._instance,
    this._then,
  );

  final Variables$FetchPerson _instance;

  final TRes Function(Variables$FetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$FetchPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$FetchPerson<TRes>
    implements CopyWith$Variables$FetchPerson<TRes> {
  _CopyWithStubImpl$Variables$FetchPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class FetchPerson {
  FetchPerson({
    this.fetchPerson,
    this.$__typename = 'Query',
  });

  factory FetchPerson.fromJson(Map<String, dynamic> json) {
    final l$fetchPerson = json['fetchPerson'];
    final l$$__typename = json['__typename'];
    return FetchPerson(
      fetchPerson: l$fetchPerson == null
          ? null
          : FetchPerson$fetchPerson.fromJson(
              (l$fetchPerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FetchPerson$fetchPerson? fetchPerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchPerson = fetchPerson;
    _resultData['fetchPerson'] = l$fetchPerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchPerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FetchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchPerson = fetchPerson;
    final lOther$fetchPerson = other.fetchPerson;
    if (l$fetchPerson != lOther$fetchPerson) {
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

extension UtilityExtension$FetchPerson on FetchPerson {
  CopyWith$FetchPerson<FetchPerson> get copyWith => CopyWith$FetchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$FetchPerson<TRes> {
  factory CopyWith$FetchPerson(
    FetchPerson instance,
    TRes Function(FetchPerson) then,
  ) = _CopyWithImpl$FetchPerson;

  factory CopyWith$FetchPerson.stub(TRes res) = _CopyWithStubImpl$FetchPerson;

  TRes call({
    FetchPerson$fetchPerson? fetchPerson,
    String? $__typename,
  });
  CopyWith$FetchPerson$fetchPerson<TRes> get fetchPerson;
}

class _CopyWithImpl$FetchPerson<TRes> implements CopyWith$FetchPerson<TRes> {
  _CopyWithImpl$FetchPerson(
    this._instance,
    this._then,
  );

  final FetchPerson _instance;

  final TRes Function(FetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchPerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FetchPerson(
        fetchPerson: fetchPerson == _undefined
            ? _instance.fetchPerson
            : (fetchPerson as FetchPerson$fetchPerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$FetchPerson$fetchPerson<TRes> get fetchPerson {
    final local$fetchPerson = _instance.fetchPerson;
    return local$fetchPerson == null
        ? CopyWith$FetchPerson$fetchPerson.stub(_then(_instance))
        : CopyWith$FetchPerson$fetchPerson(
            local$fetchPerson, (e) => call(fetchPerson: e));
  }
}

class _CopyWithStubImpl$FetchPerson<TRes>
    implements CopyWith$FetchPerson<TRes> {
  _CopyWithStubImpl$FetchPerson(this._res);

  TRes _res;

  call({
    FetchPerson$fetchPerson? fetchPerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$FetchPerson$fetchPerson<TRes> get fetchPerson =>
      CopyWith$FetchPerson$fetchPerson.stub(_res);
}

const documentNodeFetchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetch_person'),
        alias: NameNode(value: 'fetchPerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PersonSummary'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'parents'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
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
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
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
]);
FetchPerson _parserFn$FetchPerson(Map<String, dynamic> data) =>
    FetchPerson.fromJson(data);
typedef OnQueryComplete$FetchPerson = FutureOr<void> Function(
  Map<String, dynamic>?,
  FetchPerson?,
);

class Options$FetchPerson extends graphql.QueryOptions<FetchPerson> {
  Options$FetchPerson({
    String? operationName,
    required Variables$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    FetchPerson? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$FetchPerson? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$FetchPerson(data),
                  ),
          onError: onError,
          document: documentNodeFetchPerson,
          parserFn: _parserFn$FetchPerson,
        );

  final OnQueryComplete$FetchPerson? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$FetchPerson extends graphql.WatchQueryOptions<FetchPerson> {
  WatchOptions$FetchPerson({
    String? operationName,
    required Variables$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    FetchPerson? typedOptimisticResult,
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
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeFetchPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$FetchPerson,
        );
}

class FetchMoreOptions$FetchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$FetchPerson({
    required graphql.UpdateQuery updateQuery,
    required Variables$FetchPerson variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeFetchPerson,
        );
}

extension ClientExtension$FetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<FetchPerson>> fetchperson(
          Options$FetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<FetchPerson> watchFetchPerson(
          WatchOptions$FetchPerson options) =>
      this.watchQuery(options);
  void writeFetchPerson({
    required FetchPerson data,
    required Variables$FetchPerson variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeFetchPerson),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  FetchPerson? readFetchPerson({
    required Variables$FetchPerson variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeFetchPerson),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : FetchPerson.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<FetchPerson> useFetchPerson(
        Options$FetchPerson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<FetchPerson> useWatchFetchPerson(
        WatchOptions$FetchPerson options) =>
    graphql_flutter.useWatchQuery(options);

class FetchPerson$Widget extends graphql_flutter.Query<FetchPerson> {
  FetchPerson$Widget({
    widgets.Key? key,
    required Options$FetchPerson options,
    required graphql_flutter.QueryBuilder<FetchPerson> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class FetchPerson$fetchPerson implements PersonSummary {
  FetchPerson$fetchPerson({
    this.nickname,
    required this.name,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
    this.$__typename = 'Person',
    this.children,
  });

  factory FetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) {
    final l$nickname = json['nickname'];
    final l$name = json['name'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    final l$$__typename = json['__typename'];
    final l$children = json['children'];
    return FetchPerson$fetchPerson(
      nickname: (l$nickname as String?),
      name: (l$name as String),
      dob: l$dob == null ? null : dateTimeFromJson(l$dob),
      events: (l$events as List<dynamic>?)
          ?.map((e) => e == null ? null : dateTimeFromJson(e))
          .toList(),
      eventsOfEvents: (l$eventsOfEvents as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : dateTimeFromJson(e))
              .toList())
          .toList(),
      parents: (l$parents as List<dynamic>?)
          ?.map((e) => FetchPerson$fetchPerson$parents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : PersonParent.fromJson((l$favParent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      children: (l$children as List<dynamic>?)
          ?.map((e) => PersonSummary.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String? nickname;

  final String name;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<FetchPerson$fetchPerson$parents>? parents;

  final PersonParent? favParent;

  final String $__typename;

  final List<PersonSummary>? children;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dob = dob;
    _resultData['dob'] = l$dob == null ? null : dateTimeToJson(l$dob);
    final l$events = events;
    _resultData['events'] =
        l$events?.map((e) => e == null ? null : dateTimeToJson(e)).toList();
    final l$eventsOfEvents = eventsOfEvents;
    _resultData['eventsOfEvents'] = l$eventsOfEvents
        ?.map(
            (e) => e?.map((e) => e == null ? null : dateTimeToJson(e)).toList())
        .toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents?.map((e) => e.toJson()).toList();
    final l$favParent = favParent;
    _resultData['favParent'] = l$favParent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$children = children;
    _resultData['children'] = l$children?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    final l$favParent = favParent;
    final l$$__typename = $__typename;
    final l$children = children;
    return Object.hashAll([
      l$nickname,
      l$name,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$favParent,
      l$$__typename,
      l$children == null ? null : Object.hashAll(l$children.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FetchPerson$fetchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) {
        return false;
      }
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) {
            return false;
          }
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) {
              return false;
            }
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$favParent = favParent;
    final lOther$favParent = other.favParent;
    if (l$favParent != lOther$favParent) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$FetchPerson$fetchPerson on FetchPerson$fetchPerson {
  CopyWith$FetchPerson$fetchPerson<FetchPerson$fetchPerson> get copyWith =>
      CopyWith$FetchPerson$fetchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$FetchPerson$fetchPerson<TRes> {
  factory CopyWith$FetchPerson$fetchPerson(
    FetchPerson$fetchPerson instance,
    TRes Function(FetchPerson$fetchPerson) then,
  ) = _CopyWithImpl$FetchPerson$fetchPerson;

  factory CopyWith$FetchPerson$fetchPerson.stub(TRes res) =
      _CopyWithStubImpl$FetchPerson$fetchPerson;

  TRes call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<FetchPerson$fetchPerson$parents>? parents,
    PersonParent? favParent,
    String? $__typename,
    List<PersonSummary>? children,
  });
  TRes parents(
      Iterable<FetchPerson$fetchPerson$parents>? Function(
              Iterable<
                  CopyWith$FetchPerson$fetchPerson$parents<
                      FetchPerson$fetchPerson$parents>>?)
          _fn);
  CopyWith$PersonParent<TRes> get favParent;
  TRes children(
      Iterable<PersonSummary>? Function(
              Iterable<CopyWith$PersonSummary<PersonSummary>>?)
          _fn);
}

class _CopyWithImpl$FetchPerson$fetchPerson<TRes>
    implements CopyWith$FetchPerson$fetchPerson<TRes> {
  _CopyWithImpl$FetchPerson$fetchPerson(
    this._instance,
    this._then,
  );

  final FetchPerson$fetchPerson _instance;

  final TRes Function(FetchPerson$fetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nickname = _undefined,
    Object? name = _undefined,
    Object? dob = _undefined,
    Object? events = _undefined,
    Object? eventsOfEvents = _undefined,
    Object? parents = _undefined,
    Object? favParent = _undefined,
    Object? $__typename = _undefined,
    Object? children = _undefined,
  }) =>
      _then(FetchPerson$fetchPerson(
        nickname:
            nickname == _undefined ? _instance.nickname : (nickname as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        events: events == _undefined
            ? _instance.events
            : (events as List<DateTime?>?),
        eventsOfEvents: eventsOfEvents == _undefined
            ? _instance.eventsOfEvents
            : (eventsOfEvents as List<List<DateTime?>?>?),
        parents: parents == _undefined
            ? _instance.parents
            : (parents as List<FetchPerson$fetchPerson$parents>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as PersonParent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        children: children == _undefined
            ? _instance.children
            : (children as List<PersonSummary>?),
      ));
  TRes parents(
          Iterable<FetchPerson$fetchPerson$parents>? Function(
                  Iterable<
                      CopyWith$FetchPerson$fetchPerson$parents<
                          FetchPerson$fetchPerson$parents>>?)
              _fn) =>
      call(
          parents: _fn(_instance.parents
              ?.map((e) => CopyWith$FetchPerson$fetchPerson$parents(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$PersonParent<TRes> get favParent {
    final local$favParent = _instance.favParent;
    return local$favParent == null
        ? CopyWith$PersonParent.stub(_then(_instance))
        : CopyWith$PersonParent(local$favParent, (e) => call(favParent: e));
  }

  TRes children(
          Iterable<PersonSummary>? Function(
                  Iterable<CopyWith$PersonSummary<PersonSummary>>?)
              _fn) =>
      call(
          children: _fn(_instance.children?.map((e) => CopyWith$PersonSummary(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$FetchPerson$fetchPerson<TRes>
    implements CopyWith$FetchPerson$fetchPerson<TRes> {
  _CopyWithStubImpl$FetchPerson$fetchPerson(this._res);

  TRes _res;

  call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<FetchPerson$fetchPerson$parents>? parents,
    PersonParent? favParent,
    String? $__typename,
    List<PersonSummary>? children,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$PersonParent<TRes> get favParent => CopyWith$PersonParent.stub(_res);
  children(_fn) => _res;
}

class FetchPerson$fetchPerson$parents implements PersonParent, PersonSummary {
  FetchPerson$fetchPerson$parents({
    required this.name,
    this.$__typename = 'Person',
    this.nickname,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
  });

  factory FetchPerson$fetchPerson$parents.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$nickname = json['nickname'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    return FetchPerson$fetchPerson$parents(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      nickname: (l$nickname as String?),
      dob: l$dob == null ? null : dateTimeFromJson(l$dob),
      events: (l$events as List<dynamic>?)
          ?.map((e) => e == null ? null : dateTimeFromJson(e))
          .toList(),
      eventsOfEvents: (l$eventsOfEvents as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : dateTimeFromJson(e))
              .toList())
          .toList(),
      parents: (l$parents as List<dynamic>?)
          ?.map((e) => PersonParent.fromJson((e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : PersonParent.fromJson((l$favParent as Map<String, dynamic>)),
    );
  }

  final String name;

  final String $__typename;

  final String? nickname;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<PersonParent>? parents;

  final PersonParent? favParent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$dob = dob;
    _resultData['dob'] = l$dob == null ? null : dateTimeToJson(l$dob);
    final l$events = events;
    _resultData['events'] =
        l$events?.map((e) => e == null ? null : dateTimeToJson(e)).toList();
    final l$eventsOfEvents = eventsOfEvents;
    _resultData['eventsOfEvents'] = l$eventsOfEvents
        ?.map(
            (e) => e?.map((e) => e == null ? null : dateTimeToJson(e)).toList())
        .toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents?.map((e) => e.toJson()).toList();
    final l$favParent = favParent;
    _resultData['favParent'] = l$favParent?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$nickname = nickname;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    final l$favParent = favParent;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$nickname,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$favParent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FetchPerson$fetchPerson$parents) ||
        runtimeType != other.runtimeType) {
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
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) {
        return false;
      }
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) {
            return false;
          }
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) {
              return false;
            }
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$favParent = favParent;
    final lOther$favParent = other.favParent;
    if (l$favParent != lOther$favParent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$FetchPerson$fetchPerson$parents
    on FetchPerson$fetchPerson$parents {
  CopyWith$FetchPerson$fetchPerson$parents<FetchPerson$fetchPerson$parents>
      get copyWith => CopyWith$FetchPerson$fetchPerson$parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$FetchPerson$fetchPerson$parents<TRes> {
  factory CopyWith$FetchPerson$fetchPerson$parents(
    FetchPerson$fetchPerson$parents instance,
    TRes Function(FetchPerson$fetchPerson$parents) then,
  ) = _CopyWithImpl$FetchPerson$fetchPerson$parents;

  factory CopyWith$FetchPerson$fetchPerson$parents.stub(TRes res) =
      _CopyWithStubImpl$FetchPerson$fetchPerson$parents;

  TRes call({
    String? name,
    String? $__typename,
    String? nickname,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<PersonParent>? parents,
    PersonParent? favParent,
  });
  TRes parents(
      Iterable<PersonParent>? Function(
              Iterable<CopyWith$PersonParent<PersonParent>>?)
          _fn);
  CopyWith$PersonParent<TRes> get favParent;
}

class _CopyWithImpl$FetchPerson$fetchPerson$parents<TRes>
    implements CopyWith$FetchPerson$fetchPerson$parents<TRes> {
  _CopyWithImpl$FetchPerson$fetchPerson$parents(
    this._instance,
    this._then,
  );

  final FetchPerson$fetchPerson$parents _instance;

  final TRes Function(FetchPerson$fetchPerson$parents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? nickname = _undefined,
    Object? dob = _undefined,
    Object? events = _undefined,
    Object? eventsOfEvents = _undefined,
    Object? parents = _undefined,
    Object? favParent = _undefined,
  }) =>
      _then(FetchPerson$fetchPerson$parents(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nickname:
            nickname == _undefined ? _instance.nickname : (nickname as String?),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        events: events == _undefined
            ? _instance.events
            : (events as List<DateTime?>?),
        eventsOfEvents: eventsOfEvents == _undefined
            ? _instance.eventsOfEvents
            : (eventsOfEvents as List<List<DateTime?>?>?),
        parents: parents == _undefined
            ? _instance.parents
            : (parents as List<PersonParent>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as PersonParent?),
      ));
  TRes parents(
          Iterable<PersonParent>? Function(
                  Iterable<CopyWith$PersonParent<PersonParent>>?)
              _fn) =>
      call(
          parents: _fn(_instance.parents?.map((e) => CopyWith$PersonParent(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$PersonParent<TRes> get favParent {
    final local$favParent = _instance.favParent;
    return local$favParent == null
        ? CopyWith$PersonParent.stub(_then(_instance))
        : CopyWith$PersonParent(local$favParent, (e) => call(favParent: e));
  }
}

class _CopyWithStubImpl$FetchPerson$fetchPerson$parents<TRes>
    implements CopyWith$FetchPerson$fetchPerson$parents<TRes> {
  _CopyWithStubImpl$FetchPerson$fetchPerson$parents(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? nickname,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<PersonParent>? parents,
    PersonParent? favParent,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$PersonParent<TRes> get favParent => CopyWith$PersonParent.stub(_res);
}

class Variables$UpdatePerson {
  factory Variables$UpdatePerson({required String id}) =>
      Variables$UpdatePerson._({
        r'id': id,
      });

  Variables$UpdatePerson._(this._$data);

  factory Variables$UpdatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$UpdatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$UpdatePerson<Variables$UpdatePerson> get copyWith =>
      CopyWith$Variables$UpdatePerson(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$UpdatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$UpdatePerson<TRes> {
  factory CopyWith$Variables$UpdatePerson(
    Variables$UpdatePerson instance,
    TRes Function(Variables$UpdatePerson) then,
  ) = _CopyWithImpl$Variables$UpdatePerson;

  factory CopyWith$Variables$UpdatePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$UpdatePerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$UpdatePerson<TRes>
    implements CopyWith$Variables$UpdatePerson<TRes> {
  _CopyWithImpl$Variables$UpdatePerson(
    this._instance,
    this._then,
  );

  final Variables$UpdatePerson _instance;

  final TRes Function(Variables$UpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$UpdatePerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$UpdatePerson<TRes>
    implements CopyWith$Variables$UpdatePerson<TRes> {
  _CopyWithStubImpl$Variables$UpdatePerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class UpdatePerson {
  UpdatePerson({
    this.updatePerson,
    this.$__typename = 'Mutation',
  });

  factory UpdatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePerson = json['updatePerson'];
    final l$$__typename = json['__typename'];
    return UpdatePerson(
      updatePerson: l$updatePerson == null
          ? null
          : UpdatePerson$updatePerson.fromJson(
              (l$updatePerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UpdatePerson$updatePerson? updatePerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePerson = updatePerson;
    _resultData['updatePerson'] = l$updatePerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is UpdatePerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePerson = updatePerson;
    final lOther$updatePerson = other.updatePerson;
    if (l$updatePerson != lOther$updatePerson) {
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

extension UtilityExtension$UpdatePerson on UpdatePerson {
  CopyWith$UpdatePerson<UpdatePerson> get copyWith => CopyWith$UpdatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$UpdatePerson<TRes> {
  factory CopyWith$UpdatePerson(
    UpdatePerson instance,
    TRes Function(UpdatePerson) then,
  ) = _CopyWithImpl$UpdatePerson;

  factory CopyWith$UpdatePerson.stub(TRes res) = _CopyWithStubImpl$UpdatePerson;

  TRes call({
    UpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  });
  CopyWith$UpdatePerson$updatePerson<TRes> get updatePerson;
}

class _CopyWithImpl$UpdatePerson<TRes> implements CopyWith$UpdatePerson<TRes> {
  _CopyWithImpl$UpdatePerson(
    this._instance,
    this._then,
  );

  final UpdatePerson _instance;

  final TRes Function(UpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(UpdatePerson(
        updatePerson: updatePerson == _undefined
            ? _instance.updatePerson
            : (updatePerson as UpdatePerson$updatePerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$UpdatePerson$updatePerson<TRes> get updatePerson {
    final local$updatePerson = _instance.updatePerson;
    return local$updatePerson == null
        ? CopyWith$UpdatePerson$updatePerson.stub(_then(_instance))
        : CopyWith$UpdatePerson$updatePerson(
            local$updatePerson, (e) => call(updatePerson: e));
  }
}

class _CopyWithStubImpl$UpdatePerson<TRes>
    implements CopyWith$UpdatePerson<TRes> {
  _CopyWithStubImpl$UpdatePerson(this._res);

  TRes _res;

  call({
    UpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$UpdatePerson$updatePerson<TRes> get updatePerson =>
      CopyWith$UpdatePerson$updatePerson.stub(_res);
}

const documentNodeUpdatePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_person'),
        alias: NameNode(value: 'updatePerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'full_name'),
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
UpdatePerson _parserFn$UpdatePerson(Map<String, dynamic> data) =>
    UpdatePerson.fromJson(data);
typedef OnMutationCompleted$UpdatePerson = FutureOr<void> Function(
  Map<String, dynamic>?,
  UpdatePerson?,
);

class Options$UpdatePerson extends graphql.MutationOptions<UpdatePerson> {
  Options$UpdatePerson({
    String? operationName,
    required Variables$UpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    UpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$UpdatePerson? onCompleted,
    graphql.OnMutationUpdate<UpdatePerson>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$UpdatePerson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeUpdatePerson,
          parserFn: _parserFn$UpdatePerson,
        );

  final OnMutationCompleted$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$UpdatePerson
    extends graphql.WatchQueryOptions<UpdatePerson> {
  WatchOptions$UpdatePerson({
    String? operationName,
    required Variables$UpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    UpdatePerson? typedOptimisticResult,
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
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeUpdatePerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$UpdatePerson,
        );
}

extension ClientExtension$UpdatePerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<UpdatePerson>> updateperson(
          Options$UpdatePerson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<UpdatePerson> watchUpdatePerson(
          WatchOptions$UpdatePerson options) =>
      this.watchMutation(options);
}

class UpdatePerson$HookResult {
  UpdatePerson$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$UpdatePerson runMutation;

  final graphql.QueryResult<UpdatePerson> result;
}

UpdatePerson$HookResult useUpdatePerson([WidgetOptions$UpdatePerson? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$UpdatePerson());
  return UpdatePerson$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<UpdatePerson> useWatchUpdatePerson(
        WatchOptions$UpdatePerson options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$UpdatePerson extends graphql.MutationOptions<UpdatePerson> {
  WidgetOptions$UpdatePerson({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    UpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$UpdatePerson? onCompleted,
    graphql.OnMutationUpdate<UpdatePerson>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$UpdatePerson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeUpdatePerson,
          parserFn: _parserFn$UpdatePerson,
        );

  final OnMutationCompleted$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$UpdatePerson = graphql.MultiSourceResult<UpdatePerson>
    Function(
  Variables$UpdatePerson, {
  Object? optimisticResult,
  UpdatePerson? typedOptimisticResult,
});
typedef Builder$UpdatePerson = widgets.Widget Function(
  RunMutation$UpdatePerson,
  graphql.QueryResult<UpdatePerson>?,
);

class UpdatePerson$Widget extends graphql_flutter.Mutation<UpdatePerson> {
  UpdatePerson$Widget({
    widgets.Key? key,
    WidgetOptions$UpdatePerson? options,
    required Builder$UpdatePerson builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$UpdatePerson(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class UpdatePerson$updatePerson {
  UpdatePerson$updatePerson({
    required this.full_name,
    this.$__typename = 'Person',
  });

  factory UpdatePerson$updatePerson.fromJson(Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    return UpdatePerson$updatePerson(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String full_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is UpdatePerson$updatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
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

extension UtilityExtension$UpdatePerson$updatePerson
    on UpdatePerson$updatePerson {
  CopyWith$UpdatePerson$updatePerson<UpdatePerson$updatePerson> get copyWith =>
      CopyWith$UpdatePerson$updatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$UpdatePerson$updatePerson<TRes> {
  factory CopyWith$UpdatePerson$updatePerson(
    UpdatePerson$updatePerson instance,
    TRes Function(UpdatePerson$updatePerson) then,
  ) = _CopyWithImpl$UpdatePerson$updatePerson;

  factory CopyWith$UpdatePerson$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$UpdatePerson$updatePerson;

  TRes call({
    String? full_name,
    String? $__typename,
  });
}

class _CopyWithImpl$UpdatePerson$updatePerson<TRes>
    implements CopyWith$UpdatePerson$updatePerson<TRes> {
  _CopyWithImpl$UpdatePerson$updatePerson(
    this._instance,
    this._then,
  );

  final UpdatePerson$updatePerson _instance;

  final TRes Function(UpdatePerson$updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(UpdatePerson$updatePerson(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$UpdatePerson$updatePerson<TRes>
    implements CopyWith$UpdatePerson$updatePerson<TRes> {
  _CopyWithStubImpl$UpdatePerson$updatePerson(this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$WatchPerson {
  factory Variables$WatchPerson({String? id}) => Variables$WatchPerson._({
        if (id != null) r'id': id,
      });

  Variables$WatchPerson._(this._$data);

  factory Variables$WatchPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Variables$WatchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$WatchPerson<Variables$WatchPerson> get copyWith =>
      CopyWith$Variables$WatchPerson(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$WatchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$WatchPerson<TRes> {
  factory CopyWith$Variables$WatchPerson(
    Variables$WatchPerson instance,
    TRes Function(Variables$WatchPerson) then,
  ) = _CopyWithImpl$Variables$WatchPerson;

  factory CopyWith$Variables$WatchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$WatchPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$WatchPerson<TRes>
    implements CopyWith$Variables$WatchPerson<TRes> {
  _CopyWithImpl$Variables$WatchPerson(
    this._instance,
    this._then,
  );

  final Variables$WatchPerson _instance;

  final TRes Function(Variables$WatchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$WatchPerson._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Variables$WatchPerson<TRes>
    implements CopyWith$Variables$WatchPerson<TRes> {
  _CopyWithStubImpl$Variables$WatchPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class WatchPerson {
  WatchPerson({
    this.watchPerson,
    this.$__typename = 'Subscription',
  });

  factory WatchPerson.fromJson(Map<String, dynamic> json) {
    final l$watchPerson = json['watchPerson'];
    final l$$__typename = json['__typename'];
    return WatchPerson(
      watchPerson: l$watchPerson == null
          ? null
          : WatchPerson$watchPerson.fromJson(
              (l$watchPerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final WatchPerson$watchPerson? watchPerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$watchPerson = watchPerson;
    _resultData['watchPerson'] = l$watchPerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$watchPerson = watchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$watchPerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is WatchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$watchPerson = watchPerson;
    final lOther$watchPerson = other.watchPerson;
    if (l$watchPerson != lOther$watchPerson) {
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

extension UtilityExtension$WatchPerson on WatchPerson {
  CopyWith$WatchPerson<WatchPerson> get copyWith => CopyWith$WatchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$WatchPerson<TRes> {
  factory CopyWith$WatchPerson(
    WatchPerson instance,
    TRes Function(WatchPerson) then,
  ) = _CopyWithImpl$WatchPerson;

  factory CopyWith$WatchPerson.stub(TRes res) = _CopyWithStubImpl$WatchPerson;

  TRes call({
    WatchPerson$watchPerson? watchPerson,
    String? $__typename,
  });
  CopyWith$WatchPerson$watchPerson<TRes> get watchPerson;
}

class _CopyWithImpl$WatchPerson<TRes> implements CopyWith$WatchPerson<TRes> {
  _CopyWithImpl$WatchPerson(
    this._instance,
    this._then,
  );

  final WatchPerson _instance;

  final TRes Function(WatchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? watchPerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(WatchPerson(
        watchPerson: watchPerson == _undefined
            ? _instance.watchPerson
            : (watchPerson as WatchPerson$watchPerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$WatchPerson$watchPerson<TRes> get watchPerson {
    final local$watchPerson = _instance.watchPerson;
    return local$watchPerson == null
        ? CopyWith$WatchPerson$watchPerson.stub(_then(_instance))
        : CopyWith$WatchPerson$watchPerson(
            local$watchPerson, (e) => call(watchPerson: e));
  }
}

class _CopyWithStubImpl$WatchPerson<TRes>
    implements CopyWith$WatchPerson<TRes> {
  _CopyWithStubImpl$WatchPerson(this._res);

  TRes _res;

  call({
    WatchPerson$watchPerson? watchPerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$WatchPerson$watchPerson<TRes> get watchPerson =>
      CopyWith$WatchPerson$watchPerson.stub(_res);
}

const documentNodeWatchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'WatchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'watch_person'),
        alias: NameNode(value: 'watchPerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'full_name'),
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
WatchPerson _parserFn$WatchPerson(Map<String, dynamic> data) =>
    WatchPerson.fromJson(data);

class Options$WatchPerson extends graphql.SubscriptionOptions<WatchPerson> {
  Options$WatchPerson({
    String? operationName,
    Variables$WatchPerson? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    WatchPerson? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeWatchPerson,
          parserFn: _parserFn$WatchPerson,
        );
}

class WatchOptions$WatchPerson extends graphql.WatchQueryOptions<WatchPerson> {
  WatchOptions$WatchPerson({
    String? operationName,
    Variables$WatchPerson? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    WatchPerson? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeWatchPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$WatchPerson,
        );
}

class FetchMoreOptions$WatchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$WatchPerson({
    required graphql.UpdateQuery updateQuery,
    Variables$WatchPerson? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeWatchPerson,
        );
}

extension ClientExtension$WatchPerson on graphql.GraphQLClient {
  Stream<graphql.QueryResult<WatchPerson>> watchperson(
          [Options$WatchPerson? options]) =>
      this.subscribe(options ?? Options$WatchPerson());
  graphql.ObservableQuery<WatchPerson> watchWatchPerson(
          [WatchOptions$WatchPerson? options]) =>
      this.watchQuery(options ?? WatchOptions$WatchPerson());
}

graphql.QueryResult<WatchPerson> useWatchPerson(Options$WatchPerson options) =>
    graphql_flutter.useSubscription(options);

class WatchPerson$Widget extends graphql_flutter.Subscription<WatchPerson> {
  WatchPerson$Widget({
    widgets.Key? key,
    Options$WatchPerson? options,
    required graphql_flutter.SubscriptionBuilder<WatchPerson> builder,
    graphql_flutter.OnSubscriptionResult<WatchPerson>? onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$WatchPerson(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class WatchPerson$watchPerson {
  WatchPerson$watchPerson({
    required this.full_name,
    this.$__typename = 'Person',
  });

  factory WatchPerson$watchPerson.fromJson(Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    return WatchPerson$watchPerson(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String full_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is WatchPerson$watchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
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

extension UtilityExtension$WatchPerson$watchPerson on WatchPerson$watchPerson {
  CopyWith$WatchPerson$watchPerson<WatchPerson$watchPerson> get copyWith =>
      CopyWith$WatchPerson$watchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$WatchPerson$watchPerson<TRes> {
  factory CopyWith$WatchPerson$watchPerson(
    WatchPerson$watchPerson instance,
    TRes Function(WatchPerson$watchPerson) then,
  ) = _CopyWithImpl$WatchPerson$watchPerson;

  factory CopyWith$WatchPerson$watchPerson.stub(TRes res) =
      _CopyWithStubImpl$WatchPerson$watchPerson;

  TRes call({
    String? full_name,
    String? $__typename,
  });
}

class _CopyWithImpl$WatchPerson$watchPerson<TRes>
    implements CopyWith$WatchPerson$watchPerson<TRes> {
  _CopyWithImpl$WatchPerson$watchPerson(
    this._instance,
    this._then,
  );

  final WatchPerson$watchPerson _instance;

  final TRes Function(WatchPerson$watchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(WatchPerson$watchPerson(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$WatchPerson$watchPerson<TRes>
    implements CopyWith$WatchPerson$watchPerson<TRes> {
  _CopyWithStubImpl$WatchPerson$watchPerson(this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
  }) =>
      _res;
}
