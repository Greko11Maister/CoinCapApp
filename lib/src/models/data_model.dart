  // To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'package:flutter/material.dart';
import 'dart:convert';


DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());



class DataModel {
    DataModel({
        this.id,
        this.rank,
        this.symbol,
        this.name,
        this.supply,
        this.maxSupply,
        this.marketCapUsd,
        this.volumeUsd24Hr,
        this.priceUsd,
        this.changePercent24Hr,
        this.vwap24Hr,
    });

    String id;
    String rank;
    String symbol;
    String name;
    String supply;
    String maxSupply;
    String marketCapUsd;
    String volumeUsd24Hr;
    String priceUsd;
    String changePercent24Hr;
    String vwap24Hr;

    factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        id: json["id"],
        rank: json["rank"],
        symbol: json["symbol"],
        name: json["name"],
        supply: json["supply"],
        maxSupply: json["maxSupply"],
        marketCapUsd: json["marketCapUsd"],
        volumeUsd24Hr: json["volumeUsd24Hr"],
        priceUsd: json["priceUsd"],
        changePercent24Hr: json["changePercent24Hr"],
        vwap24Hr: json["vwap24Hr"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "symbol": symbol,
        "name": name,
        "supply": supply,
        "maxSupply": maxSupply,
        "marketCapUsd": marketCapUsd,
        "volumeUsd24Hr": volumeUsd24Hr,
        "priceUsd": priceUsd,
        "changePercent24Hr": changePercent24Hr,
        "vwap24Hr": vwap24Hr,
    };

    get getColor => double.parse(changePercent24Hr) < 0 ? Colors.red : Colors.green;

    get getPrice => double.parse(priceUsd).toStringAsFixed(2);

    get getPorcent => double.parse(changePercent24Hr).toStringAsFixed(2);

    get getImage => 'https://static.coincap.io/assets/icons/${symbol.toLowerCase()}@2x.png';
    
}
