import 'package:flutter/material.dart';
import 'package:flutter_todo/features/home/home_screen.dart';

import 'package:flutter_todo/features/task/task_detail/task_detail_screen.dart';
import 'package:flutter_todo/features/task/task_list/~graphql/__generated__/todo.fragments.graphql.dart';
import 'package:flutter_todo/features/task/task_new/add_new_task_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Graphql conect
ValueNotifier<GraphQLClient> getClient() {
  final httpLink = HttpLink('http://127.0.0.1:8000/graphql');
  final authLink = AuthLink(
    /// Get the token from storage
    getToken: () => 'Bearer 1|J7sGWuEyQbN80iyCje7ITijcDJckrGR43tPmHEIw',
  );
  final link = authLink.concat(httpLink);

  return ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        watchQuery: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
        ),
      ),
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
          colorScheme: const ColorScheme.dark(),
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
                builder: (_) {
                  final task = settings.arguments as Fragment$todoCardBody_Todo;
                  return TaskDetailScreen(
                    task: task,
                  );
                },
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
