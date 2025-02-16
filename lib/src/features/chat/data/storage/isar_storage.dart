import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/storage/i_local_storage.dart';
import '../models/chat_message_dto.dart';

class IsarStorage implements ILocalStorage {
  late final Isar _isar;

  IsarStorage();

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [ChatMessageDtoSchema],
      directory: dir.path,
    );
  }

  @override
  Future<void> saveAll<T>(List<T> objects) async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().putAll(objects);
    });
  }

  @override
  Future<List<T>> fetchAll<T>() async {
    return await _isar.collection<T>().buildQuery<T>(
      sortBy: [
        const SortProperty(property: 'timestamp', sort: Sort.asc),
      ],
    ).findAll();
  }

  @override
  Future<void> delete<T>(Id id) async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().delete(id);
    });
  }

  @override
  Future<void> update<T>(T object) async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().put(object);
    });
  }

  @override
  Future<void> clear<T>() async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().clear();
    });
  }
}
