import 'dart:math';

import 'package:flutter_graphql_poc/graphql-generated/query_document.graphql.dart';
import 'package:graphql/client.dart';

class QuizService {
  final GraphQLClient client;

  QuizService({required this.client});

  Future<String?> getQuiz() {
    return client.query$company_only_id().then((value) {
      print("Has exception: ${value.hasException}");
      print("Exception: ${value.exception}");
      return value.parsedData?.companies?.first?.companyID;
    });
  }

  Stream<String?> onQuizChange() {
    final subscriptionDocument = gql(
      r'''
      subscription a_minha {
        onQuizChange{
            title
        }
      }
      ''',
    );
    /*return client
        .subscribe(SubscriptionOptions(document: subscriptionDocument))
        .map((event) {
      print("event ${event}");
      print("event.data =>  ${event.data}");
      try {
        print("event.parsedData =>  ${event.parsedData}");
      } catch (ex, stack) {
        print("event.ex =>  $ex");
        print("event.stack =>  $stack");
      }

      return "ola";
    });*/
    return client.subscribe$a_minha().map((event) {
      /*print("event is $event");*/
      print("event.data is ${event.data}");
      try {
        print("event.parsedData is ${event.parsedData!.onQuizChange}");
      } catch (ex, stack) {
        print("event.ex =>  $ex");
        print("event.stack =>  $stack");
      }
      return event.parsedData?.onQuizChange?.title;
    });
  }
}
