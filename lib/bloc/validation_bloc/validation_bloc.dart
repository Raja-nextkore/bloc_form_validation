import 'dart:html';

import 'package:bloc_form_validation/bloc/validation_bloc/validation_event.dart';
import 'package:bloc_form_validation/bloc/validation_bloc/validation_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationBloc extends Bloc<ValidationEvent, ValidationState> {
  ValidationBloc():super(InitialValidationState()){
    on<EmailPasswordChangeEvent>((event, emit) {
      if(EmailValidator.validate(event.email)==false){
        emit(SignInErrorValidationState('Please Enter a valid email address'));
      }else if(event.password.length <8){
        emit(SignInErrorValidationState('Please Enter a valid password'));
      }else{
        emit(SignInVailedValidationState());
      }
    });
    on<SignInSubmitedEvent>((event, emit) {
      emit(SignInLoadingValidationState());
    });
  }
  }
