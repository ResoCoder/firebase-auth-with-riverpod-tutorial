import 'package:form_field_validator/form_field_validator.dart';

class FormValidators {
  static MultiValidator emailValidator() {
    return MultiValidator([
      EmailValidator(errorText: 'enter a valid email address'),
      RequiredValidator(errorText: 'email is required'),
    ]);
  }

  static MultiValidator passwordValidator() {
    return MultiValidator([
      RequiredValidator(errorText: 'password is required'),
      MinLengthValidator(8, errorText: 'must be at least 8 characters long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'must have at least one special character')
    ]);
  }

  static MatchValidator passwordMatchValidator() {
    return MatchValidator(errorText: 'passwords do not match');
  }
}
