import 'package:dartz/dartz.dart';

import '../entities/contact.dart';
import '../repositories/contact_repository.dart';

class SearchAllContact {
  final ContactRepository _contactRepository;

  SearchAllContact(this._contactRepository);

  Future<Either<String, Contact>> call(String uuid) async {
    try {
      final contact = await _contactRepository.search(uuid);
      return Right(contact);
    } catch (_) {
      return const Left('No fue posible recuperar los datos del contacto');
    }
  }
}
