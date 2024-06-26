// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      countryName: json['countryName'] == null
          ? null
          : CountryName.fromJson(json['countryName'] as Map<String, dynamic>),
      currencies: json['currencies'] == null
          ? null
          : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
      capitals: (json['capitals'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      languages: json['languages'] == null
          ? null
          : Languages.fromJson(json['languages'] as Map<String, dynamic>),
      latlng: (json['latlng'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      borders:
          (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      area: (json['area'] as num?)?.toDouble(),
      maps: json['maps'] == null
          ? null
          : Maps.fromJson(json['maps'] as Map<String, dynamic>),
      population: (json['population'] as num?)?.toInt(),
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'countryName': instance.countryName,
      'currencies': instance.currencies,
      'capitals': instance.capitals,
      'region': instance.region,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'latlng': instance.latlng,
      'borders': instance.borders,
      'area': instance.area,
      'maps': instance.maps,
      'population': instance.population,
      'flags': instance.flags,
    };
