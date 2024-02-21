// ! 1. State of the provider

class LoginFromState {
  final bool isPositing;
  final bool isFormPosted;
  final bool isValid;
  /*final Email email;
  final Password password;*/

  LoginFromState(
      {this.isPositing = false,
      this.isFormPosted = false,
      this.isValid = false});
}

//! 2. Como implementar un notifier

//! 3. StateNotifierProvider - Consume afuera