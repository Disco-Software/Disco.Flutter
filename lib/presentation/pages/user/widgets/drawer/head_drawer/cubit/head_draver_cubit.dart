import 'package:bloc/bloc.dart';
import 'package:disco_app/data/local/local_storage.dart';
import 'package:disco_app/injection.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'head_draver_state.dart';

class HeadDraverCubit extends Cubit<HeadDraverState> {
  HeadDraverCubit() : super(HeadDraverInitialState());

  void init() async {
    emit(HeadDraverLoadingState());
    try {
      final model = await getIt.get<SecureStorageRepository>().getStoredUserModel();

      emit(HeadDraverHasDataState(name: model!.userName, photoUrl: model.userPhoto));
    } catch (e) {
      print(['HeadDraverCubit', e]);
    }
  }
}
