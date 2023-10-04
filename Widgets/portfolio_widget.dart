// portfolio_widget.dart

import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Add your portfolio widget UI components here
      child: Column(
        children: [
          // Portfolio title
          Text(
            'My Portfolio',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16), // Spacer

          // Display portfolio items using a ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: /* Replace with the number of portfolio items */,
              itemBuilder: (context, index) {
                // Create a widget to display an individual portfolio item
                return PortfolioItemWidget(
                  assetName: 'Asset Name', // Replace with the actual asset name
                  quantity: 10,             // Replace with the actual quantity
                  value: 1000.00,           // Replace with the actual value
                  // Add more fields as needed for portfolio item data
                  // Additional fields go here
                  // Example:
                  // marketValue: 1500.00,
                  // changePercent: 2.5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Define a PortfolioItemWidget to represent individual portfolio items
class PortfolioItemWidget extends StatelessWidget {
  final String assetName;
  final int quantity;
  final double value;
  // Add more fields as needed for portfolio item data
  final double marketValue;
  final double changePercent;

  PortfolioItemWidget({
    required this.assetName,
    required this.quantity,
    required this.value,
    // Add more fields as needed for portfolio item data
    required this.marketValue,
    required this.changePercent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Portfolio item UI components go here
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display portfolio item data
          Text(
            assetName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8), // Spacer
          Text(
            'Quantity: $quantity',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Value: \$${value.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 16),
          ),
          // Add more fields and UI components to display other portfolio item data
          // Additional fields go here
        ],
      ),
    );
  }
}
