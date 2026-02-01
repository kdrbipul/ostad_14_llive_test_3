import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact List',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'name', labelText: 'name'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'phone',
                  labelText: 'phone',
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add', style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Hasan'),
                    subtitle: Text('01717-777777'),
                    leading: Icon(Icons.person, size: 32,),
                    trailing: Icon(Icons.phone, color: Colors.blue, size: 32,),
                  );
                }),
            ],
          ),
        ),
      ),
    );
  }
}
