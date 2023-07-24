import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:flutter/cupertino.dart';

abstract class TokenRepository extends ChangeNotifier {
  //Получить ацесс токен
  String? get accessToken;

  //Получить рефреш токен
  String? get refreshToken;

  //Состояние авторизации
  bool get auth;

  //получить тоены из кеша
  Future<void> initTokens();

  //удалить токены из кеша
  Future<void> deleteTokens();

  //сохранить токены
  void saveTokens({
    required String accessToken,
    required String refreshToken,
  });
}

class EncryptedTokenRepository extends TokenRepository {
  String? _accessToken;
  String? _refreshToken;

  @override
  String? get accessToken => _accessToken;

  @override
  String? get refreshToken => _refreshToken;

  @override
  bool get auth => _refreshToken != null;

  @override
  Future<void> deleteTokens() async {
    _accessToken = null;
    _refreshToken = null;

    notifyListeners();

    final storage = EncryptedSharedPreferences();
    await storage.remove('accessToken');
    await storage.remove('refreshToken');
  }

  @override
  Future<void> initTokens() async {
    final storage = EncryptedSharedPreferences();
    _accessToken = await storage.getString('accessToken');
    _refreshToken = await storage.getString('refreshToken');

    notifyListeners();
  }

  @override
  void saveTokens({required String accessToken, required String refreshToken}) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    notifyListeners();
    _persistTokens();
  }

  Future<void> _persistTokens() async {
    final storage = EncryptedSharedPreferences();
    await storage.setString('accessToken', _accessToken!);
    await storage.setString('refreshToken', _refreshToken!);
  }
}
