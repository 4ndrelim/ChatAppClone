import '../repositories/firebase_repository.dart';

class IsSignInUseCase {
  final FirebaseRepository repository;

  IsSignInUseCase(this.repository);

  Future<bool> isSignIn() async {
    return await repository.isSignIn();
  }
}
