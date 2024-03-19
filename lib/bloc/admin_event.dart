// part of 'admin_bloc.dart';

// abstract class AdminEvent{}

// class AdminDashboard implements AdminEvent {}

 
part of 'admin_bloc.dart';

class AdminEvent {}

class AdminDashboard extends AdminEvent {
  final int id ;
  final String name ;
  final String description;
  final String tagline;

  AdminDashboard({
    this.id =0,
    this.name ='',
    this.description ='',
    this.tagline ='',
  });
}