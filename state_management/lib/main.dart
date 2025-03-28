import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/auth/auth_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AuthBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with BLoC',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login/Signup')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Username Field
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                context.read<AuthBloc>().add(UpdateUsername(value));
              },
            ),

            const SizedBox(height: 16),

            // Password Field
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return TextField(
                  obscureText: !state.showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        state.showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        context.read<AuthBloc>().add(TogglePasswordVisibility());
                      },
                    ),
                  ),
                  onChanged: (value) {
                    context.read<AuthBloc>().add(UpdatePassword(value));
                  },
                );
              },
            ),

            const SizedBox(height: 24),

            // Display Inputs
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entered Username: ${state.username}'),
                    const SizedBox(height: 8),
                    Text(
                      'Entered Password: ${state.showPassword ? state.password : '•' * state.password.length}',
                    ),
                  ],
                );
              },
            ),

            const SizedBox(height: 24),

            // Login/Signup Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle login
                    final state = context.read<AuthBloc>().state;
                    print('Logging in with ${state.username}');
                  },
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle signup
                    final state = context.read<AuthBloc>().state;
                    print('Signing up with ${state.username}');
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}