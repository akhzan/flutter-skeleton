class AuthToken {
  final String authToken;
  final String refreshToken;
  final int expiresIn;

  AuthToken({this.authToken, this.refreshToken, this.expiresIn});

  static AuthToken initial() =>
      AuthToken(authToken: '', refreshToken: '', expiresIn: 0);
}
