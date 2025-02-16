abstract interface class ILocalStorage {
  Future<void> saveAll<T>(List<T> objects);
  Future<List<T>> fetchAll<T>();
  Future<void> delete<T>(int id);
  Future<void> update<T>(T object);
  Future<void> clear<T>();
}
