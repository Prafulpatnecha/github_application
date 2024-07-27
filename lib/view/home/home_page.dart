import 'package:flutter/material.dart';
import 'package:github_application/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider=Provider.of<HomeProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Application'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              homeProvider.urlLunching();
            },
            child: const Card(
              child: ListTile(
                title: Text('GitHub',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/25/25231.png'),height: 40,width: 50,),
                trailing: Icon(Icons.navigate_next,size: 30,),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              homeProvider.urlRedAndWhite();
            },
            child: const Card(
              child: ListTile(
                title: Text('RnW',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Image(image: NetworkImage('https://seeklogo.com/images/R/red-white-group-of-institutes-logo-58B5B8C48C-seeklogo.com.png'),height: 40,width: 50,),
                trailing: Icon(Icons.navigate_next,size: 30,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
