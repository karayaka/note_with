import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'merhaba': 'Hello',
          "email": 'Email',
          "kayit_ol": "Register",
          "giris_yap": "Login",
          "sifremi_unuttum": "I forgot my password",
          "password": "Password",
          "re_password": "Password Again",
          "kaydet": "Save",
          "isim": "Name",
          "soyisim": "Surname"
        },
        'tr_TR': {
          'merhaba': 'Merhaba',
          "email": 'Email',
          "kayit_ol": "Kayıt Ol",
          "giris_yap": "Giriş",
          "sifremi_unuttum": "Şifremi Unttum",
          "password": "Şifre",
          "re_password": "Şifre Tekrar",
          "kaydet": "Kaydet",
          "isim": "İsim",
          "soyisim": "Soyisim"
        },
        'de_DE': {
          'merhaba': 'Hallo',
          "email": 'Email',
          "kayit_ol": "Registrieren",
          "giris_yap": "Eingang",
          "sifremi_unuttum": "Ich habe mein Passwort vergessen",
          "password": "Passwort",
          "re_password": "Passwort Erneut",
          "kaydet": "Speichern",
          "isim": "Name",
          "soyisim": "Nachname"
        }
      };
}
