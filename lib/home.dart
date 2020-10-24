import 'package:revisi_first_app/register.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.edit),
      ),
      appBar: AppBar(
        title: Center(child: Text('My Profile')),
        backgroundColor: Colors.purple,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.deepPurple,
                radius: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bartek Parcia',
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              CheckboxListTile(
                  title: Text('Available to mentor'),
                  value: val,
                  onChanged: (bool value) {
                    setState(() {
                      val = value;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Needs mentoring'),
                  value: val,
                  onChanged: (bool value) {
                    setState(() {
                      val = value;
                    });
                  }),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Bio',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Slack Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ocuppation',
                ),
              ),
              RaisedButton(
                child: Text('Register'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Register();
                    }),
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
