
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/presentation/manger/add_task_cubit/add_task_cubit.dart';
import '../features/presentation/views/add_task_view.dart';
  import 'package:go_router/go_router.dart';

abstract class AppRouter {
  
  static const Kadd = '/AddTaskView';

  static final router = GoRouter(
    routes: [
     
      GoRoute(
        path: Kadd,
        builder: (context, state) =>  BlocProvider(
          create: (context) => AddtaskCubit(
          ),
          child: AddTaskView(
            // bookModel: state.extra as BookModel,
          ),
        ),
      ),
     
    ],
  );
}
