class PriceConvert{
  static String convertPrice(String oldPrice){
    return oldPrice.split('.')[0];
  }
}