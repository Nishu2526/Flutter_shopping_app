import 'package:bottomnavigation/widgets/profile_repated_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/yellow_divider.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({Key? key}) : super(key: key);

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            height: 200,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.brown]))
          ),
          CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.transparent),
              centerTitle: true,
              pinned: true,
              floating: true,
              expandedHeight: 140,
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: LayoutBuilder(builder: (context, contraints) {
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: AnimatedOpacity(
                    duration: const Duration(
                      milliseconds: 100,
                    ),
                    opacity: contraints.biggest.height <= 100 ? 1 : 0,
                    child: const Text('Account',
                        style: TextStyle(color: Colors.black)),
                  ),

                  background: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.brown])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, left: 25),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('images/profile/profile0.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Guest'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                          child: MaterialButton(
                            onPressed: () {},
                            child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                    child: Text(
                                  'Cart',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.yellowAccent),
                                ))),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                    child: Text('My Order',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)))),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: MaterialButton(
                            onPressed: () {},
                            child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                    child: Text('Wishlist',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.yellowAccent)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                         const SizedBox(
                          height: 150,
                          child: Image(
                            image: AssetImage('images/logo/logo0.jpg'),
                          ),
                        ),

                    const ProfileHeaderLabel(headerLabel: '  Account Info  '),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            ProfileRepeatedListTile(
                              title: 'Email Address',
                              icons: Icons.email_rounded,
                              subtitle: 'example@gmail.com',
                            ),
                            YellowDiver(),
                            ProfileRepeatedListTile(
                              title: 'Phone No',
                              icons: Icons.phone,
                              subtitle: '91+----------',
                            ),
                            YellowDiver(),
                            ProfileRepeatedListTile(
                              title: 'Account',
                              icons: Icons.location_pin,
                              subtitle: 'example: house no, nearest location',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const ProfileHeaderLabel(headerLabel: '  Account Setting  '),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileRepeatedListTile(
                                title: 'Edit Profile',
                                icons: Icons.edit,
                                subtitle: '',
                                onPressed: () {}),
                            const YellowDiver(),
                            ProfileRepeatedListTile(
                              title: 'Change Password',
                              icons: Icons.lock,
                              subtitle: '',
                              onPressed: () {},
                            ),
                            const YellowDiver(),
                            ProfileRepeatedListTile(
                              title: 'LogOut',
                              icons: Icons.logout,
                              subtitle: '',
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
                  ),

                ],
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}
