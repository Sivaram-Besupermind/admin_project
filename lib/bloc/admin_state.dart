// // ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'admin_bloc.dart';

// class AdminState {
//   final String admin;

//   AdminState({
//     this.admin = '',
//   });


//   AdminState copyWith({
//     String? admin,
//   }) {
//     return AdminState(
//       admin: admin ?? this.admin,
//     );
//   }
// }c

part of 'admin_bloc.dart';

class AdminState {
  final int id;
  final String name;
  final String description;
  final String tagline;

  AdminState({
    this.id =0,
    this.name ='',
    this.description ='',
    this.tagline ='',
  });

  AdminState copyWith({
    int? id,
    String? name,
    String? description,
    String? tagline,
  }) {
    return AdminState(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      tagline: tagline ?? this.tagline,
    );
  }
}
