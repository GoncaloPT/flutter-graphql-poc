class Input$CreateCategory {
  factory Input$CreateCategory({
    required bool finished,
    required String name,
    required List<Input$CreateQuestion?> questions,
  }) =>
      Input$CreateCategory._({
        r'finished': finished,
        r'name': name,
        r'questions': questions,
      });

  Input$CreateCategory._(this._$data);

  factory Input$CreateCategory.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$finished = data['finished'];
    result$data['finished'] = (l$finished as bool);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$questions = data['questions'];
    result$data['questions'] = (l$questions as List<dynamic>)
        .map((e) => e == null
            ? null
            : Input$CreateQuestion.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$CreateCategory._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get finished => (_$data['finished'] as bool);
  String get name => (_$data['name'] as String);
  List<Input$CreateQuestion?> get questions =>
      (_$data['questions'] as List<Input$CreateQuestion?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$finished = finished;
    result$data['finished'] = l$finished;
    final l$name = name;
    result$data['name'] = l$name;
    final l$questions = questions;
    result$data['questions'] = l$questions.map((e) => e?.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$CreateCategory<Input$CreateCategory> get copyWith =>
      CopyWith$Input$CreateCategory(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCategory) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$finished = finished;
    final lOther$finished = other.finished;
    if (l$finished != lOther$finished) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$questions = questions;
    final lOther$questions = other.questions;
    if (l$questions.length != lOther$questions.length) {
      return false;
    }
    for (int i = 0; i < l$questions.length; i++) {
      final l$questions$entry = l$questions[i];
      final lOther$questions$entry = lOther$questions[i];
      if (l$questions$entry != lOther$questions$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$finished = finished;
    final l$name = name;
    final l$questions = questions;
    return Object.hashAll([
      l$finished,
      l$name,
      Object.hashAll(l$questions.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$CreateCategory<TRes> {
  factory CopyWith$Input$CreateCategory(
    Input$CreateCategory instance,
    TRes Function(Input$CreateCategory) then,
  ) = _CopyWithImpl$Input$CreateCategory;

  factory CopyWith$Input$CreateCategory.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCategory;

  TRes call({
    bool? finished,
    String? name,
    List<Input$CreateQuestion?>? questions,
  });
  TRes questions(
      Iterable<Input$CreateQuestion?> Function(
              Iterable<CopyWith$Input$CreateQuestion<Input$CreateQuestion>?>)
          _fn);
}

class _CopyWithImpl$Input$CreateCategory<TRes>
    implements CopyWith$Input$CreateCategory<TRes> {
  _CopyWithImpl$Input$CreateCategory(
    this._instance,
    this._then,
  );

  final Input$CreateCategory _instance;

  final TRes Function(Input$CreateCategory) _then;

  static const _undefined = {};

  TRes call({
    Object? finished = _undefined,
    Object? name = _undefined,
    Object? questions = _undefined,
  }) =>
      _then(Input$CreateCategory._({
        ..._instance._$data,
        if (finished != _undefined && finished != null)
          'finished': (finished as bool),
        if (name != _undefined && name != null) 'name': (name as String),
        if (questions != _undefined && questions != null)
          'questions': (questions as List<Input$CreateQuestion?>),
      }));
  TRes questions(
          Iterable<Input$CreateQuestion?> Function(
                  Iterable<
                      CopyWith$Input$CreateQuestion<Input$CreateQuestion>?>)
              _fn) =>
      call(
          questions: _fn(_instance.questions.map((e) => e == null
              ? null
              : CopyWith$Input$CreateQuestion(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Input$CreateCategory<TRes>
    implements CopyWith$Input$CreateCategory<TRes> {
  _CopyWithStubImpl$Input$CreateCategory(this._res);

  TRes _res;

  call({
    bool? finished,
    String? name,
    List<Input$CreateQuestion?>? questions,
  }) =>
      _res;
  questions(_fn) => _res;
}

class Input$CreateQuestion {
  factory Input$CreateQuestion({
    String? answer,
    required bool mandatory,
    required String text,
  }) =>
      Input$CreateQuestion._({
        if (answer != null) r'answer': answer,
        r'mandatory': mandatory,
        r'text': text,
      });

  Input$CreateQuestion._(this._$data);

  factory Input$CreateQuestion.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('answer')) {
      final l$answer = data['answer'];
      result$data['answer'] = (l$answer as String?);
    }
    final l$mandatory = data['mandatory'];
    result$data['mandatory'] = (l$mandatory as bool);
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    return Input$CreateQuestion._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get answer => (_$data['answer'] as String?);
  bool get mandatory => (_$data['mandatory'] as bool);
  String get text => (_$data['text'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('answer')) {
      final l$answer = answer;
      result$data['answer'] = l$answer;
    }
    final l$mandatory = mandatory;
    result$data['mandatory'] = l$mandatory;
    final l$text = text;
    result$data['text'] = l$text;
    return result$data;
  }

  CopyWith$Input$CreateQuestion<Input$CreateQuestion> get copyWith =>
      CopyWith$Input$CreateQuestion(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateQuestion) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$answer = answer;
    final lOther$answer = other.answer;
    if (_$data.containsKey('answer') != other._$data.containsKey('answer')) {
      return false;
    }
    if (l$answer != lOther$answer) {
      return false;
    }
    final l$mandatory = mandatory;
    final lOther$mandatory = other.mandatory;
    if (l$mandatory != lOther$mandatory) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$answer = answer;
    final l$mandatory = mandatory;
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('answer') ? l$answer : const {},
      l$mandatory,
      l$text,
    ]);
  }
}

abstract class CopyWith$Input$CreateQuestion<TRes> {
  factory CopyWith$Input$CreateQuestion(
    Input$CreateQuestion instance,
    TRes Function(Input$CreateQuestion) then,
  ) = _CopyWithImpl$Input$CreateQuestion;

  factory CopyWith$Input$CreateQuestion.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateQuestion;

  TRes call({
    String? answer,
    bool? mandatory,
    String? text,
  });
}

class _CopyWithImpl$Input$CreateQuestion<TRes>
    implements CopyWith$Input$CreateQuestion<TRes> {
  _CopyWithImpl$Input$CreateQuestion(
    this._instance,
    this._then,
  );

  final Input$CreateQuestion _instance;

  final TRes Function(Input$CreateQuestion) _then;

  static const _undefined = {};

  TRes call({
    Object? answer = _undefined,
    Object? mandatory = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Input$CreateQuestion._({
        ..._instance._$data,
        if (answer != _undefined) 'answer': (answer as String?),
        if (mandatory != _undefined && mandatory != null)
          'mandatory': (mandatory as bool),
        if (text != _undefined && text != null) 'text': (text as String),
      }));
}

class _CopyWithStubImpl$Input$CreateQuestion<TRes>
    implements CopyWith$Input$CreateQuestion<TRes> {
  _CopyWithStubImpl$Input$CreateQuestion(this._res);

  TRes _res;

  call({
    String? answer,
    bool? mandatory,
    String? text,
  }) =>
      _res;
}

class Input$CreateQuiz {
  factory Input$CreateQuiz({
    List<Input$CreateCategory?>? categories,
    required String companyID,
    String? description,
    required String quizTypeId,
    required String title,
  }) =>
      Input$CreateQuiz._({
        if (categories != null) r'categories': categories,
        r'companyID': companyID,
        if (description != null) r'description': description,
        r'quizTypeId': quizTypeId,
        r'title': title,
      });

  Input$CreateQuiz._(this._$data);

  factory Input$CreateQuiz.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categories')) {
      final l$categories = data['categories'];
      result$data['categories'] = (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$CreateCategory.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    final l$companyID = data['companyID'];
    result$data['companyID'] = (l$companyID as String);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$quizTypeId = data['quizTypeId'];
    result$data['quizTypeId'] = (l$quizTypeId as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$CreateQuiz._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CreateCategory?>? get categories =>
      (_$data['categories'] as List<Input$CreateCategory?>?);
  String get companyID => (_$data['companyID'] as String);
  String? get description => (_$data['description'] as String?);
  String get quizTypeId => (_$data['quizTypeId'] as String);
  String get title => (_$data['title'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categories')) {
      final l$categories = categories;
      result$data['categories'] =
          l$categories?.map((e) => e?.toJson()).toList();
    }
    final l$companyID = companyID;
    result$data['companyID'] = l$companyID;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$quizTypeId = quizTypeId;
    result$data['quizTypeId'] = l$quizTypeId;
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$CreateQuiz<Input$CreateQuiz> get copyWith =>
      CopyWith$Input$CreateQuiz(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateQuiz) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (_$data.containsKey('categories') !=
        other._$data.containsKey('categories')) {
      return false;
    }
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$companyID = companyID;
    final lOther$companyID = other.companyID;
    if (l$companyID != lOther$companyID) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$quizTypeId = quizTypeId;
    final lOther$quizTypeId = other.quizTypeId;
    if (l$quizTypeId != lOther$quizTypeId) {
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
    final l$categories = categories;
    final l$companyID = companyID;
    final l$description = description;
    final l$quizTypeId = quizTypeId;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('categories')
          ? l$categories == null
              ? null
              : Object.hashAll(l$categories.map((v) => v))
          : const {},
      l$companyID,
      _$data.containsKey('description') ? l$description : const {},
      l$quizTypeId,
      l$title,
    ]);
  }
}

abstract class CopyWith$Input$CreateQuiz<TRes> {
  factory CopyWith$Input$CreateQuiz(
    Input$CreateQuiz instance,
    TRes Function(Input$CreateQuiz) then,
  ) = _CopyWithImpl$Input$CreateQuiz;

  factory CopyWith$Input$CreateQuiz.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateQuiz;

  TRes call({
    List<Input$CreateCategory?>? categories,
    String? companyID,
    String? description,
    String? quizTypeId,
    String? title,
  });
  TRes categories(
      Iterable<Input$CreateCategory?>? Function(
              Iterable<CopyWith$Input$CreateCategory<Input$CreateCategory>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateQuiz<TRes>
    implements CopyWith$Input$CreateQuiz<TRes> {
  _CopyWithImpl$Input$CreateQuiz(
    this._instance,
    this._then,
  );

  final Input$CreateQuiz _instance;

  final TRes Function(Input$CreateQuiz) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? companyID = _undefined,
    Object? description = _undefined,
    Object? quizTypeId = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$CreateQuiz._({
        ..._instance._$data,
        if (categories != _undefined)
          'categories': (categories as List<Input$CreateCategory?>?),
        if (companyID != _undefined && companyID != null)
          'companyID': (companyID as String),
        if (description != _undefined) 'description': (description as String?),
        if (quizTypeId != _undefined && quizTypeId != null)
          'quizTypeId': (quizTypeId as String),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
  TRes categories(
          Iterable<Input$CreateCategory?>? Function(
                  Iterable<
                      CopyWith$Input$CreateCategory<Input$CreateCategory>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Input$CreateCategory(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateQuiz<TRes>
    implements CopyWith$Input$CreateQuiz<TRes> {
  _CopyWithStubImpl$Input$CreateQuiz(this._res);

  TRes _res;

  call({
    List<Input$CreateCategory?>? categories,
    String? companyID,
    String? description,
    String? quizTypeId,
    String? title,
  }) =>
      _res;
  categories(_fn) => _res;
}

class Input$CreateQuizType {
  factory Input$CreateQuizType({required String name}) =>
      Input$CreateQuizType._({
        r'name': name,
      });

  Input$CreateQuizType._(this._$data);

  factory Input$CreateQuizType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$CreateQuizType._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$CreateQuizType<Input$CreateQuizType> get copyWith =>
      CopyWith$Input$CreateQuizType(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateQuizType) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$CreateQuizType<TRes> {
  factory CopyWith$Input$CreateQuizType(
    Input$CreateQuizType instance,
    TRes Function(Input$CreateQuizType) then,
  ) = _CopyWithImpl$Input$CreateQuizType;

  factory CopyWith$Input$CreateQuizType.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateQuizType;

  TRes call({String? name});
}

class _CopyWithImpl$Input$CreateQuizType<TRes>
    implements CopyWith$Input$CreateQuizType<TRes> {
  _CopyWithImpl$Input$CreateQuizType(
    this._instance,
    this._then,
  );

  final Input$CreateQuizType _instance;

  final TRes Function(Input$CreateQuizType) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Input$CreateQuizType._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$CreateQuizType<TRes>
    implements CopyWith$Input$CreateQuizType<TRes> {
  _CopyWithStubImpl$Input$CreateQuizType(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const possibleTypesMap = {};
