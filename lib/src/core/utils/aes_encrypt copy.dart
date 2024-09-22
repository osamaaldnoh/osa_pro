import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class AesEncryptAndDecrypt {
  static final key = "buildyourownsystemwitheraproerpt";
  static final iv = "buildyourownsyst";

  static String encryptAES({required String text}) {
    final keyBytes = utf8.encode(key);
    final keySHa256 = sha256.convert(keyBytes).bytes;
    final encrypters = encrypt.Encrypter(encrypt.AES(
        encrypt.Key(Uint8List.fromList(keySHa256)),
        mode: encrypt.AESMode.cbc));
    final ivBytes = utf8.encode(iv);
    final ivObj = encrypt.IV(ivBytes);
    final encryptedd = encrypters.encrypt(text, iv: ivObj);

    return base64Encode(encryptedd.bytes);

    // final encrypter =
    //     encrypt.Encrypter(encrypt.AES(key, mode: encrypt.AESMode.gcm));

    // final encrypted = encrypter.encrypt(
    //   text,
    //   iv: iv,
    // );

    // print(encrypted.bytes);
    // print(encrypted.base16);
    // print(encrypted.base64);
    // return encrypted;

    // 222222222
    // final keyBytes = utf8.encode(key.toString());
    // final keySHa256 = sha256.convert(keyBytes).bytes;
    // final encrypters = encrypt.Encrypter(encrypt.AES(
    //     encrypt.Key(Uint8List.fromList(keySHa256)),
    //     mode: encrypt.AESMode.cbc));

    // final encryptedd = encrypters.encrypt(text, iv: iv);
    // print(encryptedd.base16);
    // print(encryptedd.base64);
    // return base64Encode(encryptedd.bytes);

    /// 3333333
  }

  static String decryptAES({required String text}) {
    // final encrypter =
    //     encrypt.Encrypter(encrypt.AES(key, mode: encrypt.AESMode.gcm));

    // final decrypted = encrypter.decrypt(text, iv: iv);
    // print(decrypted);
    // return decrypted;

    // final keyBytes = utf8.encode(key);
    // final keySHa256 = sha256.convert(keyBytes).bytes;
    // final encrypters = encrypt.Encrypter(encrypt.AES(
    //     encrypt.Key(Uint8List.fromList(keySHa256)),
    //     mode: encrypt.AESMode.cbc));
    // final ivBytes = utf8.encode(iv);
    // final ivObj = encrypt.IV(ivBytes);
    // final decrypt =
    //     encrypters.decrypt(encrypt.Encrypted(encrypters), iv: ivObj);

    final encryptedBytes = base64Decode(text);

    // Convert the key to bytes and hash it with SHA-256
    final keyBytes = utf8.encode(key);
    final keySHa256 = sha256.convert(keyBytes).bytes;

    // Create the encrypter with the same key and IV used for encryption
    final encrypter = encrypt.Encrypter(encrypt.AES(
      encrypt.Key(Uint8List.fromList(keySHa256)),
      mode: encrypt.AESMode.cbc,
    ));
    // Decode the IV
    final ivBytes = utf8.encode(iv);
    final ivObj = encrypt.IV(ivBytes);

    // Decrypt the data
    final decrypted = encrypter.decryptBytes(
      encrypt.Encrypted(encryptedBytes),
      iv: ivObj,
    );

    return utf8.decode(decrypted);
  }

  // static String myEncryptAES(String dataEncrypt) {
  //   final key = encrypt.Key.fromUtf8('buildyourownsystemwitheraproerpt');
  //   final iv = encrypt.IV.fromSecureRandom(16);
  //   final encrypter = encrypt.Encrypter(encrypt.AES(key));

  //   final encrypted = encrypter.encrypt(dataEncrypt, iv: iv);
  //   // final decrypted = encrypter.decrypt(encrypted, iv: iv);

  //   // print(decrypted);

  //   return encrypted.toString();
  // }
}
