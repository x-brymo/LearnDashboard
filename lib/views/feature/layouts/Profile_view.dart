import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProfilePicture(),
            const SizedBox(height: 20),
            _buildProfileCard('Name', 'Mahmoud Hafez Eltarqi'),
            _buildProfileCard('Email', 'xbrymo01@gmail.com'),
            _buildProfileCard('Phone', '+201007944857'),
            _buildProfileCard('Address', 'Egypt, Qalyubia, Shebin Elqanater, Nazlet Arab Johyna'),
            _buildProfileCard('Date of Birth', '2000-08-01'),
          ],
        ),
      ),
    );
  }
  Widget _buildProfileCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
  Widget _buildProfilePicture() {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
        'https://avatars.githubusercontent.com/u/98850036?v=4',
      ),
    );
  }
}