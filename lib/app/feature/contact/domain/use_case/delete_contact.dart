import 'package:dartz/dartz.dart';

import '../../../../shared/domain/nothing.dart';
import '../repositories/contact_repository.dart';

class DeleteContact {
  final ContactRepository _contactRepository;

  DeleteContact(this._contactRepository);

  Future<Either<String, Nothing>> call(String uuid) async {
    try {
      await _contactRepository.delete(uuid);
      return Right(Nothing());
    } catch (_) {
      return const Left('Error al eliminar el contacto');
    }
  }
}
