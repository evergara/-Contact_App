import 'package:contact_app/app/feature/contact/domain/entities/contact.dart';

abstract class ContactRepository {
  Future<void> create(Contact task);
  Future<Contact> search(String uuid);
  Future<List<Contact>> getAll();
  Future<void> update(Contact task);
  Future<void> delete(String uuid);
}
