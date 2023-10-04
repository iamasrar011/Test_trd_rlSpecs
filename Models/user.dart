class User {
  final String username;
  final String email;
  final double accountBalance;
  final List<String> watchlist;

  User({
    required this.username,
    required this.email,
    required this.accountBalance,
    required this.watchlist,
  });

  void addToWatchlist(String asset) {
    watchlist.add(asset);
  }

  void removeFromWatchlist(String asset) {
    watchlist.remove(asset);
  }

  void deposit(double amount) {
    accountBalance += amount;
  }

  void withdraw(double amount) {
    if (amount <= accountBalance) {
      accountBalance -= amount;
    } else {
      print('Insufficient funds for withdrawal.');
    }
  }
}
