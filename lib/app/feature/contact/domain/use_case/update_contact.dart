import 'package:dartz/dartz.dart';

import '../../../../shared/domain/nothing.dart';
import '../entities/contact.dart';
import '../repositories/contact_repository.dart';

class CreateContact {
  final ContactRepository _contactRepository;

  CreateContact(this._contactRepository);

  Future<Either<String, Nothing>> call(Contact contact) async {
    try {
      await _contactRepository.update(contact);
      return Right(Nothing());
    } catch (_) {
      return const Left('Error al actualizar el contacto');
    }
  }
}
