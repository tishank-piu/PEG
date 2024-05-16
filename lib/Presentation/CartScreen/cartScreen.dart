import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color.fromRGBO(0, 252, 206, 30),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Products Received'),
            Tab(text: 'Products Sent'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProductsReceivedTab(),
          ProductsSentTab(),
        ],
      ),
    );
  }
}

class ProductsReceivedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Placeholder for received products
      itemBuilder: (context, index) {
        // Replace this with actual product data
        return ListTile(
          title: Text('Received Product ${index + 1}'),
          subtitle: Text('Details of received product ${index + 1}'),
        );
      },
    );
  }
}

class ProductsSentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Placeholder for sent products
      itemBuilder: (context, index) {
        // Replace this with actual product data
        return ListTile(
          title: Text('Sent Product ${index + 1}'),
          subtitle: Text('Details of sent product ${index + 1}'),
        );
      },
    );
  }
}
