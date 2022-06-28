import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'cubit_manager_state.dart';

class CubitManagerCubit extends Cubit<CubitManagerState> {
  CubitManagerCubit() : super(CubitManagerInitial());
  Map myFlagMap = {"checked": false};
  static get(context) => BlocProvider.of<CubitManagerCubit>(context);
  void submit(flag, context) {
    if (flag == true) {
      myFlagMap['checked'] = true;
      //AutoRouter.of(context).push(const RegisterRoute());
      emit(SubmitState());
    }
  }
}
