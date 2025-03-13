import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Yogyakarta',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Today',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    '28°C',
                    style: TextStyle(fontSize: 100, fontWeight: FontWeight.w600, color: Colors.blue),
                  ),
                  const SizedBox(height: 20),
                  const Divider(thickness: 1, color: Color.fromARGB(255, 87, 87, 87)),
                  const SizedBox(height: 20),
                  const Text(
                    'Sunny',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '❄ 5 km/h',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 10),
                    child: Text(
                      'Next 7 days',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _weatherColumn('Now'),
                      _weatherColumn('17.00'),
                      _weatherColumn('20.00'),
                      _weatherColumn('23.00'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Developed by: JekoDragonball.id',
            style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _weatherColumn(String time) {
    return Column(
      children: [
        Text(time, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 5),
        const Text('❄', style: TextStyle(fontSize: 24, color: Colors.blue)),
        const SizedBox(height: 5),
        const Text('28°C', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue)),
        const SizedBox(height: 15),
        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.air, size: 18, color: Colors.red),
            SizedBox(height: 5),
            Text('10 km/h', style: TextStyle(fontSize: 14, color: Colors.red)),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.umbrella, size: 18, color: Colors.black),
            SizedBox(height: 5),
            Text('0%', style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        ),
      ],
    );
  }
}