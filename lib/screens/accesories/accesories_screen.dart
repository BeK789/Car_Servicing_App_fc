import 'package:flutter/material.dart';

class AccesoriesScreen extends StatefulWidget {
  const AccesoriesScreen({super.key});

  @override
  State<AccesoriesScreen> createState() => _AccesoriesScreenState();
}

class _AccesoriesScreenState extends State<AccesoriesScreen> {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': 'Seat Covers',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Android Screen',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Speakers & Bass Tube',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Cameras',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Floor Mats',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Tyre Inflatiors',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Air Purifiers & Freshners',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Online Consultaion',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Alloy Wheels',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
  ];

  final List<Map<String, dynamic>> gridMap2 = [
    {
      'title': 'Screen & Speakers',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Car Care & Purifiers',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Floor Mats & Cushions',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Horns & Protectives',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Lights & Chargers',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
    {
      'title': 'Roadside Assistance',
      'image':
          'https://imgs.search.brave.com/GlVwAMrGIyUVxwGwuoLmVVxbOorRf0T9qSHRpWV8M-I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDFWbGhVTTRrYUwu/anBn'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'At Shop Installation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Pickup & Drop with Service Buddy',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 147),
                itemCount: gridMap.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 6.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      // color: Colors.amberAccent
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            child: Image.network(
                              "${gridMap.elementAt(index)['image']}",
                              height: 80,
                              width: double.infinity,
                              fit: BoxFit.fitHeight,
                            )),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "${gridMap.elementAt(index)['title']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'At Home Delivery',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Free Shipping Pan India',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 147),
                itemCount: gridMap2.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 6.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      // color: Colors.amberAccent
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            child: Image.network(
                              "${gridMap2.elementAt(index)['image']}",
                              height: 80,
                              width: double.infinity,
                              fit: BoxFit.fitHeight,
                            )),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "${gridMap2.elementAt(index)['title']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
