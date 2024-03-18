// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'admin_bloc.dart';

class AdminState {
  final String admin;

  AdminState({
    this.admin = '',
  });


  AdminState copyWith({
    String? admin,
  }) {
    return AdminState(
      admin: admin ?? this.admin,
    );
  }
}
