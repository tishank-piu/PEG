import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes'),
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Quizzes Attended'),
            Tab(text: 'Quizzes Conducted'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          QuizzesAttendedTab(),
          QuizzesConductedTab(),
        ],
      ),
    );
  }
}

class QuizzesAttendedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Placeholder for quizzes attended
      itemBuilder: (context, index) {
        // Placeholder data for quizzes attended
        final String quizName = 'Quiz ${index + 1}';
        final String userAnswer = 'Option A'; // Placeholder for user's answer

        return ListTile(
          title: Text(quizName),
          subtitle: Text('Your Answer: $userAnswer'),
        );
      },
    );
  }
}

class QuizzesConductedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // Placeholder for quizzes conducted
      itemBuilder: (context, index) {
        // Placeholder data for quizzes conducted
        final String quizName = 'Quiz ${index + 1}';
        final String correctAnswer = 'Option B'; // Placeholder for correct answer

        return ListTile(
          title: Text(quizName),
          subtitle: Text('Correct Answer: $correctAnswer'),
        );
      },
    );
  }
}
