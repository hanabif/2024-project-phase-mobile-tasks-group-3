// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../data/repositories/user_repository.dart';
import '../../data/models/user.dart';
import '../../data/services/api_service.dart';
import '../../data/services/storage_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserRepository userRepository = UserRepository(
    apiService: ApiService(),
    storageService: StorageService(),
  );

  List<User> users = [];
  User? savedUser;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadUsers();
    loadSavedUser();
  }

  
  Future<void> loadUsers() async {
    try {
      List<User> fetchedUsers = await userRepository.getUsers();
      setState(() {
        users = fetchedUsers;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load users: ${e.toString()}')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  
  Future<void> loadSavedUser() async {
    User? user = await userRepository.getSavedUser();
    setState(() {
      savedUser = user;
    });
  }

  
  void saveUser(User user) async {
    await userRepository.saveUser(user);
    setState(() {
      savedUser = user;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${user.name} saved successfully!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (savedUser != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Last Saved: ${savedUser!.name} - ${savedUser!.email}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            isLoading
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: CircularProgressIndicator(),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // Allows smooth scrolling
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      User user = users[index];
                      return ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                        trailing: IconButton(
                          icon: Icon(Icons.save),
                          onPressed: () => saveUser(user),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}