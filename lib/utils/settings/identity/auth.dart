import 'dart:convert';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:http/http.dart' as http;
import '../../config.dart';

class Auth {
  // props
  FlutterAppAuth appAuth;

  bool isLoggedIn = false;

  //const
  Auth() {
    this.appAuth = FlutterAppAuth();
  }

  Future<Map<String, dynamic>> getUserDetails(String accessToken) async {
    final response = await http.get(
      Uri.parse(AUTH_USER_INFO),
      headers: {'Authorization': 'Bearer $accessToken'},
    );
    return (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('Failed to get user details');
  }

  Future<AuthorizationTokenResponse> signInWithAutoCodeExchange(
      {bool preferEphemeralSession = false}) async {
    try {
      final AuthorizationTokenResponse result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(AUTH_CLIENT_ID, AUTH_REDIRECT_URL,
            serviceConfiguration: const AuthorizationServiceConfiguration(
                '$AUTH_ISSUER/connect/authorize', '$AUTH_ISSUER/connect/token'),
            scopes: AUTH_SCOPES,
            preferEphemeralSession: preferEphemeralSession,
            promptValues: []

            ));
      return (result != null) ? result : null;
    } catch (_) {
      throw _;
    }
  }
}
