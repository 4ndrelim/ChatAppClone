import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String uid;
  final String name;
  final String phoneNumber;
  final String? email;
  final bool? isOnline;
  final String? status;
  final String? profileUrl;

  UserEntity(
      {required this.uid,
      required this.name,
      required this.phoneNumber,
      this.email,
      this.isOnline,
      this.status,
      this.profileUrl});

  @override
  List<Object?> get props =>
      [uid, name, phoneNumber, email, isOnline, status, profileUrl];
}
