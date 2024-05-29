import 'package:flutter/material.dart';
import 'package:tugas_akhir/widget/bottom_nav.dart';
import 'package:tugas_akhir/pages/profilPage.dart';
import 'package:tugas_akhir/widget/boxDecoration.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                        
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/addition.jpg',
                        height: 32,
                        width: 32,
                      ),
                      const SizedBox(width: 24),
                      Image.asset(
                        'assets/menu.jpg',
                        height: 32,
                        width: 32,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 3),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/sr.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            '4',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Post',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            '37,9K',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'ShahRukhh._',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Actor',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Best actor from India',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    ProfileButton(text: 'Edit Profile'),
                    SizedBox(width: 8),
                    ProfileButton(text: 'Share Profile'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/profil.jpg',
                            height: 24,
                            width: 24,
                            color: Color.fromARGB(255, 2, 39, 70),
                          ),
                          const Spacer(),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: Color.fromARGB(255, 2, 39, 70),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/folder.jpg',
                            height: 24,
                            width: 24,
                            color: Color.fromARGB(255, 117, 132, 144),
                          ),
                          const Spacer(),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 2),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: buttonDecoration,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
     ),
    );
  }
}
