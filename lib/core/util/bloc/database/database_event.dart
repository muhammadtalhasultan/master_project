part of 'database_bloc.dart';

abstract class DatabaseEvent extends Equatable {
  const DatabaseEvent();
}

class InitDatabase extends DatabaseEvent {
  final BuildContext context;

  const InitDatabase(this.context);

  @override
  List<Object> get props => [context];
}

class AddDatabase extends DatabaseEvent {
  final Database db;

  const AddDatabase(this.db);

  @override
  List<Object> get props => [db];
}
