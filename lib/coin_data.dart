import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const URL = 'https://rest.coinapi.io/v1/exchangerate';
const APIkey = 'EE4E9A6A-61D8-4216-8FC7-E8B9F93D2CCF';

class CoinData {
  // Future getCoinData() async {
  //   //get the request from the URL with the API KEY
  //   http.Response response = await http.get('$URL/BTC/USD?apikey=$APIkey');
  //
  //   if (response.statusCode == 200) {
  //     //if success create a var from the response body
  //     //get the last price from the response body
  //     var decodedData = jsonDecode(response.body);
  //     var lastPrice = decodedData['rate'];
  //     return lastPrice;
  //   } else {
  //     print(response.statusCode);
  //
  //     throw 'Problem with the get request';
  //   }
  // }

  //Method to get Bitcoin currency by country
  Future getBitCoinCurrency(String cur) async {
    http.Response response = await http.get('$URL/BTC/$cur?apikey=$APIkey');
    if (response.statusCode == 200) {
      //if success create a var from the response body
      //get the last price from the response body
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }

  //Method to get ETH currency by country
  Future getETHCurrency(String cur) async {
    http.Response response = await http.get('$URL/ETH/$cur?apikey=$APIkey');
    if (response.statusCode == 200) {
      //if success create a var from the response body
      //get the last price from the response body
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }

  //Method to get LTC currency by country
  Future getLTCCurrency(String cur) async {
    http.Response response = await http.get('$URL/LTC/$cur?apikey=$APIkey');
    if (response.statusCode == 200) {
      //if success create a var from the response body
      //get the last price from the response body
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
}
