import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          const UserHeader(),
          const SizedBox(height: 20),
          
          // Seller Section
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'For Sellers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.store, color: Color(0xFF00C853)), // Mint Green
                  title: const Text('Start Selling'),
                  subtitle: const Text('Register your business and list products'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.pushNamed(context, '/seller/register');
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.dashboard, color: Color(0xFF00C853)), // Mint Green
                  title: const Text('Seller Dashboard'),
                  subtitle: const Text('Manage your listings and orders'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to dashboard (placeholder)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Dashboard feature coming soon!')),
                    );
                  },
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Buyer Section
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'For Buyers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.favorite_border, color: Colors.black54),
                  title: const Text('Favorites'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.history, color: Colors.black54),
                  title: const Text('Browsing History'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.request_quote, color: Colors.black54),
                  title: const Text('My RFQs'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xFFE8F5E9), // Light Mint
            child: Icon(Icons.person, size: 40, color: Color(0xFF00C853)), // Mint Green
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome, Guest',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft,
                  foregroundColor: const Color(0xFF00C853), // Mint Green text
                ),
                child: const Text('Sign In / Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
