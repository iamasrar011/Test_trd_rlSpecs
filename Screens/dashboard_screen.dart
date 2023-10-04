import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  // Actual portfolio data
  final double totalPortfolioValue = 135000.00;
  final List<PortfolioItem> portfolioItems = [
    PortfolioItem('AAPL', 20, 155.00),
    PortfolioItem('GOOGL', 10, 2500.00),
    PortfolioItem('TSLA', 15, 700.00),
    // Add more portfolio items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Your Dashboard',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              // Display user portfolio information and widgets here
              Text(
                'Total Portfolio Value: \$${totalPortfolioValue.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              // Display the portfolio items using a ListView.builder
              Expanded(
                child: ListView.builder(
                  itemCount: portfolioItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = portfolioItems[index];
                    return PortfolioItemWidget(item: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define a PortfolioItem class to represent individual portfolio items
class PortfolioItem {
  final String symbol;
  final int quantity;
  final double currentPrice;

  PortfolioItem(this.symbol, this.quantity, this.currentPrice);
}

// Create a widget to display individual portfolio items
class PortfolioItemWidget extends StatelessWidget {
  final PortfolioItem item;

  PortfolioItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(item.symbol),
        subtitle: Text('Quantity: ${item.quantity} | Current Price: \$${item.currentPrice.toStringAsFixed(2)}'),
        // You can add more information or actions related to each portfolio item here
        trailing: ElevatedButton(
          onPressed: () {
            // Implement actions or navigate to details for this portfolio item
          },
          child: Text('Start Trading'),
        ),
      ),
    );
  }
}
