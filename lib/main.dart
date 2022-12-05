import 'package:flutter/material.dart';
import 'package:flutter_graphql_poc/service.dart';
import 'package:graphql/client.dart';

void main() {
  runApp(const MyApp());
}

final websocketLink = WebSocketLink(
  'ws://localhost:8080/graphql',
  config: const SocketClientConfig(
    autoReconnect: true,
    delayBetweenReconnectionAttempts: Duration(seconds: 10),

  ),
  subProtocol: GraphQLProtocol.graphqlTransportWs
);
final HttpLink httpLink = HttpLink(
  'http://localhost:8080/graphql',
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    QuizService service = QuizService(
        client: GraphQLClient(
            cache: GraphQLCache(),
            link: Link.split(
                (request) => request.isSubscription, websocketLink, httpLink)));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        quizService: service,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final QuizService quizService;

  const MyHomePage({super.key, required this.title, required this.quizService});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           /* FutureBuilder(
                future: widget.quizService.getQuiz(),
                builder: (ctx, snapshot) =>
                    Text("found company: ${snapshot.data}")),*/
            StreamBuilder(
                stream: widget.quizService.onQuizChange(),
                builder: (ctx, snapshot) =>
                    Text("found company: ${snapshot.data}"))
          ],
        ),
      ),
    );
  }
}
