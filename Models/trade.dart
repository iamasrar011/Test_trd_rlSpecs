// trade.dart

class Trade {
  final String asset;       // Asset symbol (e.g., AAPL, GOOGL)
  final double entryPrice;  // Entry price of the trade
  final double quantity;    // Quantity of the asset bought or sold
  final DateTime entryTime; // Entry time of the trade
  double exitPrice;         // Exit price of the trade (initialized as null)
  DateTime exitTime;        // Exit time of the trade (initialized as null)

  // Constructor to initialize a trade at the entry point
  Trade({
    required this.asset,
    required this.entryPrice,
    required this.quantity,
    required this.entryTime,
  }) {
    // Initialize exitPrice and exitTime as null when the trade is entered
    exitPrice = 0.0;  // You can choose another default value if needed
    exitTime = DateTime.now(); // You can choose another default value if needed
  }

  // Method to update trade details when the trade is exited
  void exitTrade(double exitPrice) {
    // Update the exitPrice and exitTime when the trade is exited
    this.exitPrice = exitPrice;
    exitTime = DateTime.now();
  }

  // Method to calculate the profit or loss of the trade
  double calculateProfitOrLoss() {
    if (exitPrice == 0.0) {
      // Trade is still open, profit/loss cannot be calculated yet
      return 0.0; // You can choose another default value if needed
    }
    // Calculate profit or loss based on entry and exit prices
    return (exitPrice - entryPrice) * quantity;
  }
}
