import 'package:flutter/material.dart';
import 'package:hw_5/componints/profile_service.dartprofile_service.dart';
 

class ViewProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Profile Information'),
      ),
      body: FutureBuilder<List<String>>(
        future: getProfileInfo(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(snapshot.data![index]),
                  ),
                );
              },
            );
          }
          return Center(child: Text('No profile information available.'));
        },
      ),
    );
  }
}
