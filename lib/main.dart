import 'package:client/repository/storage_repository.dart';
import 'package:client/utils/config.dart';
import 'package:client/widgets/task_add/task_add.dart';
import 'package:client/widgets/task_list/task_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<StorageRepository>(
      create: (context) => StorageRepository(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ToDo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              TaskAddWidget(),
              TaskListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
