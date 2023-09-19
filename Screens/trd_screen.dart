import 'package:flutter/material.dart';

class TradeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your trade screen UI here
        return Scaffold(
      appBar: AppBar(
        title: Text('Trade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Place Your Trades Here',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Add trading forms, order types, and execution buttons here
            TextFormField(
                decoration: InputDecoration(labelText: 'Stock Symbol'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                items: ['Market Order', 'Limit Order', 'Stop-Loss Order']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (selectedOrderType) {
                  // Handle selected order type
                },
                value: 'Market Order', // Set the default order type
                decoration: InputDecoration(labelText: 'Order Type'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement trade execution logic here
                   //  Submit the trade order to the server
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Trade Executed Successfully'),
                    ),
                  );
                },
                child: Text('Execute Trade'),
              ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
