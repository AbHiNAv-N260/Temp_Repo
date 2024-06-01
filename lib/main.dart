import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool _isSearching = false;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();
  bool isScrolled = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.offset >= 125 && !isScrolled) {
        setState(() {
          isScrolled = true;
        });
      } else if (scrollController.offset < 125 && isScrolled) {
        setState(() {
          isScrolled = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          if (!isScrolled)
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  if (_isSearching) {
                    setState(() {
                      _isSearching = !_isSearching;
                    });
                  }
                },
              ),
            ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              onBackPressed: () {
                setState(() {
                  _isSearching = false;
                });
              },
              minHeight: 80.0,
              maxHeight: 80.0,
              isScrolled: isScrolled,
            ),
          ),
          SliverList(
            delegate: _isSearching
                ? SliverChildListDelegate([
                    if (isScrolled)
                      SizedBox(
                        height: 180,
                      ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search member',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(170, 171, 171, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Following',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/image8.png'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(73, 73, 73, 1)),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 69, 111, 1),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ])
                : SliverChildListDelegate(
                    [
                      if (isScrolled)
                        SizedBox(
                          height: 160,
                        ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed sed enim in urna tincidunt sodales. Vivamus vel suscipit lorem.....',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Read More',
                          style: TextStyle(
                              color: Color.fromRGBO(239, 69, 111, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(children: [
                        Wrap(
                          spacing: 0,
                          runSpacing: 0,
                          children: List.generate(4, (index) {
                            return Container(
                              height: 40,
                              width: 85,
                              child: Chip(
                                label: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(239, 69, 111, 1)),
                                ),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color.fromRGBO(239, 69, 111, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            );
                          }),
                        ),
                        Wrap(children: [
                          Container(
                            height: 40,
                            width: 50,
                            child: Chip(
                              label: Text(
                                '+1',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(239, 69, 111, 1)),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromRGBO(239, 69, 111, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ]),
                      ]),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Media, docs and links',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 97,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          'images/image1.png',
                                          fit: BoxFit.cover,
                                          height: 97,
                                          width: 97,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Mute notification',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Image.asset(
                            'images/image12.png',
                            height: 21,
                            width: 21,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Container(
                          height: 24,
                          width: 24,
                          child: ListTile(
                            leading: Image.asset('images/image3.png'),
                            title: Text(
                              'Clear chat',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Container(
                          height: 24,
                          width: 24,
                          child: ListTile(
                            leading: Image.asset('images/image4.png'),
                            title: Text(
                              'Encryption',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Container(
                          height: 24,
                          width: 24,
                          child: ListTile(
                            leading: Image.asset('images/image5.png'),
                            title: Text(
                              'Exit community',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 48, 64, 1)),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Container(
                          height: 24,
                          width: 24,
                          child: ListTile(
                            leading: Image.asset('images/image6.png'),
                            title: Text(
                              'Report',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 48, 64, 1)),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                'Members',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (!_isSearching) {
                                    _isSearching = !_isSearching;
                                  }
                                });
                              },
                              icon: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset('images/image7.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(170, 171, 171, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/image8.png'),
                              ),
                              title: Text(
                                'Yashika',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                '29, India',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(73, 73, 73, 1)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(239, 69, 111, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

typedef VoidCallback = void Function();

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.onBackPressed,
    required this.minHeight,
    required this.maxHeight,
    required this.isScrolled,
  });

  final double minHeight;
  final double maxHeight;
  final bool isScrolled;
  final VoidCallback onBackPressed;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromRGBO(195, 36, 34, 1),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          if (isScrolled)
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                onBackPressed();
              },
            ),
          if (isScrolled)
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('images/image1.png'),
            ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The weeknd',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
              Text('Community • +11K Members',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          Spacer(),
          if (isScrolled)
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, -3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              height: 4,
                              width: 88,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Image.asset(
                                height: 24, width: 24, 'images/image9.png'),
                            title: Text(
                              'Invite',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image.asset(
                                height: 24, width: 24, 'images/image10.png'),
                            title: Text(
                              'Add Member',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image.asset(
                                height: 24, width: 24, 'images/image11.png'),
                            title: Text(
                              'Add Group',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            )
          else
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/image2.png'),
            ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        isScrolled != oldDelegate.isScrolled;
  }
}
