import 'package:bloc/bloc.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_event.dart';
part 'admin_state.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc() : super(AdminState()) {
    on<AdminDashboard>(_onAdminDashboard);
  }
  void _onAdminDashboard(
    AdminDashboard event,
    Emitter<AdminState> emit,
  ) {
    emit(state.copyWith(admin: state.admin));
  }
}
