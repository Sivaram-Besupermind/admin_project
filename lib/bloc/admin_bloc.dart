// // import 'package:bloc/bloc.dart';
// // //import 'package:freezed_annotation/freezed_annotation.dart';

// // part 'admin_event.dart';
// // part 'admin_state.dart';

// // class AdminBloc extends Bloc<AdminEvent, AdminState> {
// //   AdminBloc() : super(AdminState()) {
// //     on<AdminDashboard>(_onAdminDashboard);
// //   }
// //   void _onAdminDashboard(
// //     AdminDashboard event,
// //     Emitter<AdminState> emit,
// //   ) {
// //     emit(state.copyWith(admin: state.admin));
// //   }
// // }


// import 'package:bloc/bloc.dart';
// import 'package:project/bloc/admin_state.dart';

// part 'admin_event.dart';
// part 'admin_state.dart';

// class AdminBloc extends Bloc<AdminEvent, AdminState> {
//   AdminBloc() : super(AdminState());

//   @override
//   Stream<AdminState> mapEventToState(AdminEvent event) async* {
//     if (event is AdminDashboard) {
//       yield state.copyWith(
//         id: admin.id,
//         name: admin.name,
//         description: admin.description,
//         tagline: admin.tagline,
//       );
//     }
//   }
// }


import 'package:bloc/bloc.dart';

part 'admin_event.dart';
part 'admin_state.dart';

class EventBloc extends Bloc<AdminEvent, AdminState> {
  EventBloc() : super(AdminState());

  Stream<AdminState> mapEventToState(AdminEvent admin) async* {
    if (admin is AdminDashboard) {
      yield state.copyWith(
        id: admin.id,
        name: admin.name,
        description: admin.description,
        tagline: admin.tagline,
      );
    }
  }
}