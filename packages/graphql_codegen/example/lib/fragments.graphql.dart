import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'scalars.dart';

class PersonSummary {
  PersonSummary({
    this.nickname,
    required this.name,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
    this.$__typename = 'Person',
  });

  factory PersonSummary.fromJson(Map<String, dynamic> json) {
    final l$nickname = json['nickname'];
    final l$name = json['name'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    final l$$__typename = json['__typename'];
    return PersonSummary(
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
          ?.map((e) => PersonParent.fromJson((e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : PersonParent.fromJson((l$favParent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? nickname;

  final String name;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<PersonParent>? parents;

  final PersonParent? favParent;

  final String $__typename;

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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is PersonSummary) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$PersonSummary on PersonSummary {
  CopyWith$PersonSummary<PersonSummary> get copyWith => CopyWith$PersonSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$PersonSummary<TRes> {
  factory CopyWith$PersonSummary(
    PersonSummary instance,
    TRes Function(PersonSummary) then,
  ) = _CopyWithImpl$PersonSummary;

  factory CopyWith$PersonSummary.stub(TRes res) =
      _CopyWithStubImpl$PersonSummary;

  TRes call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<PersonParent>? parents,
    PersonParent? favParent,
    String? $__typename,
  });
  TRes parents(
      Iterable<PersonParent>? Function(
              Iterable<CopyWith$PersonParent<PersonParent>>?)
          _fn);
  CopyWith$PersonParent<TRes> get favParent;
}

class _CopyWithImpl$PersonSummary<TRes>
    implements CopyWith$PersonSummary<TRes> {
  _CopyWithImpl$PersonSummary(
    this._instance,
    this._then,
  );

  final PersonSummary _instance;

  final TRes Function(PersonSummary) _then;

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
  }) =>
      _then(PersonSummary(
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
            : (parents as List<PersonParent>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as PersonParent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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

class _CopyWithStubImpl$PersonSummary<TRes>
    implements CopyWith$PersonSummary<TRes> {
  _CopyWithStubImpl$PersonSummary(this._res);

  TRes _res;

  call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<PersonParent>? parents,
    PersonParent? favParent,
    String? $__typename,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$PersonParent<TRes> get favParent => CopyWith$PersonParent.stub(_res);
}

const PersonSummary = FragmentDefinitionNode(
  name: NameNode(value: 'PersonSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'nickname'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'full_name'),
      alias: NameNode(value: 'name'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'dob'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'events'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'events_of_events'),
      alias: NameNode(value: 'eventsOfEvents'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'parents'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PersonParent'),
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
      name: NameNode(value: 'favorite_parent'),
      alias: NameNode(value: 'favParent'),
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PersonParent'),
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
);
const documentNodePersonSummary = DocumentNode(definitions: [
  PersonSummary,
  PersonParent,
]);

extension ClientExtension$PersonSummary on graphql.GraphQLClient {
  void writePersonSummary({
    required PersonSummary data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PersonSummary',
            document: documentNodePersonSummary,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  PersonSummary? readPersonSummary({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonSummary',
          document: documentNodePersonSummary,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : PersonSummary.fromJson(result);
  }
}

class PersonParent {
  PersonParent({
    required this.name,
    this.$__typename = 'Person',
  });

  factory PersonParent.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return PersonParent(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is PersonParent) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$PersonParent on PersonParent {
  CopyWith$PersonParent<PersonParent> get copyWith => CopyWith$PersonParent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$PersonParent<TRes> {
  factory CopyWith$PersonParent(
    PersonParent instance,
    TRes Function(PersonParent) then,
  ) = _CopyWithImpl$PersonParent;

  factory CopyWith$PersonParent.stub(TRes res) = _CopyWithStubImpl$PersonParent;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$PersonParent<TRes> implements CopyWith$PersonParent<TRes> {
  _CopyWithImpl$PersonParent(
    this._instance,
    this._then,
  );

  final PersonParent _instance;

  final TRes Function(PersonParent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(PersonParent(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$PersonParent<TRes>
    implements CopyWith$PersonParent<TRes> {
  _CopyWithStubImpl$PersonParent(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const PersonParent = FragmentDefinitionNode(
  name: NameNode(value: 'PersonParent'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'full_name'),
      alias: NameNode(value: 'name'),
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
const documentNodePersonParent = DocumentNode(definitions: [
  PersonParent,
]);

extension ClientExtension$PersonParent on graphql.GraphQLClient {
  void writePersonParent({
    required PersonParent data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PersonParent',
            document: documentNodePersonParent,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  PersonParent? readPersonParent({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonParent',
          document: documentNodePersonParent,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : PersonParent.fromJson(result);
  }
}
