import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
        title: Text('Leaderboard'),
      ),
      body: ListView.builder(
        itemCount: 10, // Placeholder for user ranks
        itemBuilder: (context, index) {
          // Placeholder data for user ranks
          final int rank = index + 1;
          final bool isCurrentUser = rank == 3; // Placeholder for current user's rank

          // Colors for top 3 ranks
          Color rankColor = Color.fromRGBO(188, 198, 204, 30);
          if (rank == 1) {
            rankColor = Color.fromRGBO(255, 215, 0, 30); // Gold color for rank 1
          } else if (rank == 2) {
            rankColor = Colors.blueGrey; // Silver color for rank 2
          } else if (rank == 3) {
            rankColor = Color.fromRGBO(205, 127, 50, 30); // Bronze color for rank 3
          }

          return ListTile(
            leading: CircleAvatar(
              child: Text('$rank'),
              backgroundColor: rankColor,
            ),
            title: Text('User $rank'),
            subtitle: Text('Details of user $rank'),
            trailing: isCurrentUser ? Icon(Icons.person) : null,
          );
        },
      ),
    );
  }
}
