import 'package:dartz/dartz.dart';

import '../entities/contact.dart';
import '../repositories/contact_repository.dart';

class GetAllContact {
  final ContactRepository _contactRepository;

  GetAllContact(this._contactRepository);

  Future<Either<String, List<Contact>>> call() async {
    try {
      final contacts = await _contactRepository.getAll();
      return Right(contacts);
    } catch (_) {
      return const Left('No fue posible recuperar los datos de los contactos');
    }
  }
}
