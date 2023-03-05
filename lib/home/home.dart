import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => StoryScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/s1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => editProfile()));
                                },
                                child: CircleAvatar(
                                  radius: 11,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Center(
                              child: Text(
                                'Your Story',
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                postContainer('assets/images/s1.jpg'),
                postContainer('assets/images/s1.jpg')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget storyContainer(image) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => StoryScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.green, width: 3),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Text(
                    'jaydeep_hirani',
                    style: TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget postContainer(image) {
    return Container(
      
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/s1.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => friendProfile()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'martingarrix',
                            style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '@martinglen | 23 May 2020',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // showModalBottomSheet(
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(20),
                    //       topRight: Radius.circular(20),
                    //     ),
                    //   ),
                    //   context: context,
                    //   isScrollControlled: true,
                    //   builder: (BuildContext context) {
                    //     return FractionallySizedBox(
                    //       heightFactor: 0.6,
                    //       child: bottomContainer(),
                    //     );
                    //   },
                    // );
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => postDetail()));
            },
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '57 likes, 12 comments',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '2 shares',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => comments()));
                    },
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // showModalBottomSheet(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //       topLeft: Radius.circular(20),
                      //       topRight: Radius.circular(20),
                      //     ),
                      //   ),
                      //   context: context,
                      //   isScrollControlled: true,
                      //   builder: (BuildContext context) {
                      //     return FractionallySizedBox(
                      //       heightFactor: 0.8,
                      //       child: shareContainer(),
                      //     );
                      //   },
                      // );
                    },
                    icon: Icon(
                      Icons.near_me_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
