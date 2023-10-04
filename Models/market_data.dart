// market_data.dart

import 'dart:async';
import 'dart:math';

class MarketData {
  // Simulated market data for demonstration purposes
  final List<String> availableAssets = ['AAPL', 'GOOGL', 'TSLA', 'AMZN', 'MSFT'];
  final Map<String, double> latestPrices = {}; // Store latest prices for assets

  // Function to simulate fetching latest prices for available assets
  Future<void> fetchLatestPrices() async {
    for (final asset in availableAssets) {
      final double price = _simulatePriceChange(asset);
      latestPrices[asset] = price; // Store the latest price for the asset
      await Future.delayed(Duration(seconds: 1)); // Simulate fetching delay
    }
  }

  // Function to simulate price change for an asset
  double _simulatePriceChange(String asset) {
    final double currentPrice = latestPrices[asset] ?? 100.0; // Initial price
    final double volatility = 0.2; // Simulated volatility
    final double randomFactor = Random().nextDouble() * 0.1 - 0.05; // Random price change

    final double newPrice = currentPrice * (1 + volatility * randomFactor);
    return newPrice;
  }
}
