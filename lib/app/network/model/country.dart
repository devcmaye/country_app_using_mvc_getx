import 'package:json_annotation/json_annotation.dart';

  part 'country.g.dart';


@JsonSerializable()
class Country {
  final CountryName? countryName;
  final Currencies? currencies;
  final List<String>? capitals;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final List<double?>? latlng; // Changed to List<double> for lat and lng coordinates.
  final List<String>? borders;
  final double? area;
  final Maps? maps;
  final int? population;
  final Flags? flags;

  Country({
    this.countryName,
    this.currencies,
    this.capitals,
    this.region,
    this.subregion,
    this.languages,
    this.latlng,
    this.borders,
    this.area,
    this.maps,
    this.population,
    this.flags,
  });

  // fromJson factory constructor
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      countryName: json['name'] != null ? CountryName.fromJson(json['name']) : null,
      currencies: json['currencies'] != null ? Currencies.fromJson(json['currencies']) : null,
      capitals: json['capitals'] != null ? List<String>.from(json['capitals']) : null,
      region: json['region'],
      subregion: json['subregion'],
      languages: json['languages'] != null ? Languages.fromJson(json['languages']) : null,
      latlng: json['latlng'] != null ? List<double>.from(json['latlng']) : null,
      borders: json['borders'] != null ? List<String>.from(json['borders']) : null,
      area: json['area'],
      maps: json['maps'] != null ? Maps.fromJson(json['maps']) : null,
      population: json['population'],
      flags: json['flags'] != null ? Flags.fromJson(json['flags']) : null,
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countryName != null) {
      data['name'] = countryName!.toJson();
    }
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    if (capitals != null) {
      data['capitals'] = capitals;
    }
    data['region'] = region;
    data['subregion'] = subregion;
    if (languages != null) {
      data['languages'] = languages!.toJson();
    }
    if (latlng != null) {
      data['latlng'] = latlng;
    }
    if (borders != null) {
      data['borders'] = borders;
    }
    data['area'] = area;
    if (maps != null) {
      data['maps'] = maps!.toJson();
    }
    data['population'] = population;
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    return data;
  }
}






class CountryName{
    String? official;
    String? common;

    CountryName({this.official, this.common}); 

    CountryName.fromJson(Map<String, dynamic> json) {
        official = json['official'];
        common = json['common'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['official'] = official;
        data['common'] = common;
        return data;
    }
}

class XPF {
    String? name;
    String? symbol;

    XPF({this.name, this.symbol}); 

    XPF.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        symbol = json['symbol'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['name'] = name;
        data['symbol'] = symbol;
        return data;
    }
}


class Currencies {
    XPF? xPF;

    Currencies({this.xPF}); 

    Currencies.fromJson(Map<String, dynamic> json) {
        xPF = json['XPF'] != null ? XPF?.fromJson(json['XPF']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['XPF'] = xPF!.toJson();
        return data;
    }
}


class Languages {
    String? lang;

    Languages({this.lang}); 

    Languages.fromJson(Map<String, dynamic> json) {
        lang = json['lang'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['lang'] = lang;
        return data;
    }
}


class Maps {
    String? googleMaps;
    String? openStreetMaps;

    Maps({this.googleMaps, this.openStreetMaps}); 

    Maps.fromJson(Map<String, dynamic> json) {
        googleMaps = json['googleMaps'];
        openStreetMaps = json['openStreetMaps'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['googleMaps'] = googleMaps;
        data['openStreetMaps'] = openStreetMaps;
        return data;
    }
}
class Flags {
    String? png;
    String? svg;

    Flags({this.png, this.svg}); 

    Flags.fromJson(Map<String, dynamic> json) {
        png = json['png'];
        svg = json['svg'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['png'] = png;
        data['svg'] = svg;
        return data;
    }
}