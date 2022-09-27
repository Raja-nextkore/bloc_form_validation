abstract class ValidationEvent {}

class EmailPasswordChangeEvent extends ValidationEvent {
  final String email;
  final String password;
  EmailPasswordChangeEvent(this.email, this.password);
}

class SignInSubmitedEvent extends ValidationEvent {
  final String email;
  final String password;
  SignInSubmitedEvent(this.email, this.password);
}
