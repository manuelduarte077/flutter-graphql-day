import 'package:flutter/material.dart';
import 'package:flutter_todo/features/home/home_screen.dart';

import 'package:flutter_todo/features/task/task_detail/task_detail_screen.dart';
import 'package:flutter_todo/features/task/task_new/add_new_task_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Graphql conect
ValueNotifier<GraphQLClient> getClient() {
  final httpLink = HttpLink('http://127.0.0.1:8000/graphql');
  final authLink = AuthLink(
    /// Get the token from storage
    getToken: () => 'Bearer 1|oYRJ7znTt9eDI42G2SIbySD6Gq3bRTuPLCXTmEFa',
  );
  final link = authLink.concat(httpLink);

  return ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),

      /// Explicar del fetchPolicy
      link: link,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: getClient(),
      child: MaterialApp(
        theme: ThemeData.from(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
          ),
        ),
        home: const HomeScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/add-user':
              return MaterialPageRoute(
                builder: (_) => const AddNewTaskScreen(),
              );
            case '/task-detail':
              return MaterialPageRoute(
                builder: (_) => const TaskDetailScreen(),
              );
            case '/':
            default:
              return MaterialPageRoute(builder: (_) => const HomeScreen());
          }
        },
      ),
    );
  }
}
