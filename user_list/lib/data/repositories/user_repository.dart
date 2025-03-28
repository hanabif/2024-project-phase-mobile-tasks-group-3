import '../models/user.dart';
import '../services/api_service.dart';
import '../services/storage_service.dart';

class UserRepository {
  final ApiService apiService;
  final StorageService storageService;

  UserRepository({required this.apiService, required this.storageService});

  
  Future<List<User>> getUsers() async {
    return await apiService.fetchUsers();
  }

  
  Future<void> saveUser(User user) async {
    await storageService.saveUser(user);
  }

  
  Future<User?> getSavedUser() async {
    return await storageService.getSavedUser();
  }
}
