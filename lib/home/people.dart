import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      //design a search bar grey color
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        children: [
          Image.asset(
            'assets/horizontal_logo.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            //create an image as an icon button

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline_rounded),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Discover People',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  children: List.generate(
                    10,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 140,
                          margin: EdgeInsets.only(left: 10.0, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://randomuser.me/api/portraits/men/$index.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Name $index \nMechanical Engineer',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.0, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem Ipsum is sim',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Click to read more ',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '₦ 6500',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
