import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_alternative/domain/entities/item_alternative_entities.dart';
import '../repositories/item_alternative_repositories.dart';

class ItemAlternativeUseCase {
  final ItemAlternativeRepository repository;

  ItemAlternativeUseCase({required this.repository});

  Future<Either<Failure, List<ItemAlternativeEntity>>> call() async {
    return await repository.getItemAlternatives();
  }
}
