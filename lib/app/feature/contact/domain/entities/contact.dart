import 'contact_phone.dart';

class Contact {
  final String _uuid;
  final String _name;
  String? _email;
  String? _address;
  String? _picture;
  List<ContactPhone>? _contactphones;

  Contact(this._name, this._uuid, this._address, this._email, this._picture,
      this._contactphones);

  String get uuid => _uuid;
  String get name => _name;

  String? get address => _address;
  set address(address) => _address = _address;

  String? get email => _email;
  set email(email) => _email = email;

  String? get picture => _picture;
  set picture(picture) => _picture = picture;

  List<ContactPhone>? get contactphones => _contactphones;
  set contactphones(contactphones) => _contactphones = contactphones;
}
