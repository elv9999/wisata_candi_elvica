class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Demo', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ), 