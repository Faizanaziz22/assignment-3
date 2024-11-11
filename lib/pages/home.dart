import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.cloud_queue), onPressed: () {}),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildSettingsIntro(),
                  Divider(),
                  _buildSettingsOption(),
                  Divider(),
                  _buildSettingsTags(),
                  Divider(),
                  _buildFooterIcons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderImage() {
    return SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/images/present.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildSettingsIntro() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Welcome to Settings',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          'Adjust your preferences below and make sure your settings are tailored to your needs.',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Widget _buildSettingsOption() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.settings,
          color: Colors.blueAccent,
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Notification Settings',
              style: TextStyle(color: Colors.deepOrange),
            ),
            Text(
              'Manage your notification preferences.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSettingsTags() {
    return Wrap(
      spacing: 8.0,
      children: List.generate(5, (int index) {
        return Chip(
          label: Text(
            'Setting ${index + 1}',
            style: TextStyle(fontSize: 10.0),
          ),
          avatar: Icon(
            Icons.settings,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    );
  }

  Widget _buildFooterIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () {
            print("Salmon picture tapped");
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/salmon.jpg'),
            radius: 30.0,
          ),
        ),
        InkWell(
          onTap: () {
            print("Photo picture tapped");
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/photo.jpeg'),
            radius: 30.0,
          ),
        ),
        InkWell(
          onTap: () {
            print("Strawberry picture tapped");
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/strawbery.jpg'),
            radius: 30.0,
          ),
        ),
        SizedBox(
          width: 80.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.notifications),
              Icon(Icons.lock),
              Icon(Icons.language),
            ],
          ),
        ),
      ],
    );
  }
}
