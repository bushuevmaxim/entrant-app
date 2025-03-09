import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

abstract interface class IProgrammsRepository {
  Future<List<Programm>> getProgramms();
  Future<Programm> getProgrammById({required String id});
}