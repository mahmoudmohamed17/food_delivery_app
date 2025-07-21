import 'package:bloc/bloc.dart';

class EnableSearchCubit extends Cubit<bool> {
  EnableSearchCubit() : super(false);

  void enableSearch() => emit(true);

  void disableSearch() => emit(false);
}
