import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '_id',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        isCollapsed: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        )
                      ),
                      ),                  
                  )
              ],
            ),
            const SizedBox(
              height: 30
              ),
            Row(
             children: [
                const Text('name'),
                const SizedBox(width: 10,),
             SizedBox(
              width: 300,
              child: TextFormField(
                style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  )
                ),
              ),
             )
              ],
            ),
            const SizedBox(
              height: 30
            ),
            Row(
              children: [
                const Text(
                  'description',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10,),
                SizedBox(
              width: 300,
              child: TextFormField(
                style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  )
                ),
              ),
              ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children:  [
                const Text(
                  'tagline',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        isCollapsed: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        )
                      ),
                    ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}