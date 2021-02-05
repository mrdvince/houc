class WalletModel {
  String name;
  String wallet;
  String walletLogo;
  String walletNumber;

  WalletModel(this.name, this.wallet, this.walletLogo, this.walletNumber);
}

List<WalletModel> wallets = walletData
    .map((item) => WalletModel(
        item['name'], item['wallet'], item['walletLogo'], item['walletNumber']))
    .toList();

var walletData = [
  {
    "name": "Jadazz",
    "wallet": "Gopay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+254*** **** 1932'
  },
  {
    "name": "Cheekanderson",
    "wallet": "Sdfgh",
    "walletLogo": 'assets/images/ovo_logo.png',
    "walletNumber": '+254*** **** 2245'
  },
  {
    "name": "Smtin",
    "wallet": "Gopay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+254*** **** 2245'
  },
  {
    "name": "Dayhat",
    "wallet": "Dana",
    "walletLogo": 'assets/images/dana_logo.png',
    "walletNumber": '+254*** **** 1932'
  }
];
