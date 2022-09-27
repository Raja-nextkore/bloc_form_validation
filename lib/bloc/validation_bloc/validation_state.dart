abstract class ValidationState {}

class InitialValidationState extends ValidationState {}



class SignInVailedValidationState extends ValidationState {}

class SignInLoadingValidationState extends ValidationState {}

class SignInErrorValidationState extends ValidationState {
  final String errormsg;
  SignInErrorValidationState(this.errormsg);
}
