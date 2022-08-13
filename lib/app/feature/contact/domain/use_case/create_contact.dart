import 'package:contact_app/app/feature/contact/domain/entities/contact.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/nothing.dart';
import '../repositories/contact_repository.dart';

class CreateContact {
  final ContactRepository _contactRepository;

  CreateContact(this._contactRepository);

  Future<Either<String, Nothing>> call(Contact contact) async {
    try {
      await _contactRepository.create(contact);
      return Right(Nothing());
    } catch (_) {
      return const Left('Error al guardar el contacto');
    }
  }
}