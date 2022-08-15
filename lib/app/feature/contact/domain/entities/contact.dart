import 'package:contact_app/app/feature/contact/domain/objects_value/phone.dart';

class Contact {
  final String _uuid;
  final String _name;
  String? _email;
  String? _address;
  String? _picture;
  List<Phone>? _phones;

  Contact(this._name, this._uuid,
      {String? address, String? email, String? picture, List<Phone>? phones}) {
    _address = address;
    _email = email;
    _picture = picture;
    _phones = phones;
  }

  String get uuid => _uuid;
  String get name => _name;

  String? get address => _address;
  set address(address) => _address = _address;

  String? get email => _email;
  set email(email) => _email = email;

  String? get picture => _picture;
  set picture(picture) => _picture = picture;

  List<Phone>? get contactphones => _phones;
  set contactphones(phones) => _phones = _phones;
}
