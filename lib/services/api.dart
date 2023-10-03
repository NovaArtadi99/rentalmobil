import 'dart:convert';

import 'package:rental_car/models/errMsg.dart';
import 'package:rental_car/models/mobil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ApiStatic {
  static const host = 'http://192.168.199.155';
  static var _token = "1|0KH9fvTCbM32KR8HB7HePQo12iphhiO5twct3wuO2277b0f0";
  Future<SharedPreferences> preferences = SharedPreferences.getInstance();
  static Future<void> getPref() async {
    Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    _token = prefs.getString('token') ?? "";
  }

  static getHost() {
    return host;
  }

  static Future<List<Car>> getCar() async {
    try {
      getPref();
      final response = await http.get(Uri.parse("$host/api/mobil"), headers: {
        'Authorization': 'Bearer ' + _token,
      });
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        final parsed = json['data'].cast<Map<String, dynamic>>();
        return parsed.map<Car>((json) => Car.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  static Future<ErrorMSG> saveCar(platMobil, car, filepath) async {
    try {
      var url = Uri.parse('$host/api/mobil');
      if (platMobil != 0) {
        // ignore: prefer_interpolation_to_compose_strings
        url = Uri.parse('$host/api/mobil/' + platMobil.toString());
      }
      var request = http.MultipartRequest('CAR', url);
      request.fields['nama_mobil'] = car['nama_mobil'];
      request.fields['warna'] = car['warna'];
      request.fields['tipe'] = car['tipe'];
      request.fields['tahun'] = car['tahun'];
      request.fields['tgl.pajak'] = car['tgl.pajak'].toString();
      request.fields['nama_pemilik'] = car['nama_pemilik'];
      request.fields['cc'] = car['cc'];
      request.fields['harga_sewa'] = car['harga_sewa'];
      request.fields['status'] = car['status'].toString();
      request.fields['tgl_catat'] = car['tgl.catat'].toString();
      if (filepath != '') {
        request.files
            .add(await http.MultipartFile.fromPath('gambar_mobil', filepath));
      }

      getPref();
      request.headers.addAll({
        // ignore: prefer_interpolation_to_compose_strings
        'Authorization': 'Bearer ' + _token,
      });
      var response = await request.send();
      //final response = await http.post(Uri.parse('$_host/panen'), body:_panen);
      if (response.statusCode == 200) {
        //return ErrorMSG.fromJson(jsonDecode(response.body));
        final respStr = await response.stream.bytesToString();
        //print(jsonDecode(respStr));
        return ErrorMSG.fromJson(jsonDecode(respStr));
      } else {
        //return ErrorMSG.fromJson(jsonDecode(response.body));
        return ErrorMSG(success: false, message: 'err Request');
      }
    } catch (e) {
      ErrorMSG responseRequest =
          ErrorMSG(success: false, message: 'error caught: $e');
      return responseRequest;
    }
  }

  // delete
  static Future<ErrorMSG> deleteCar(platMobil) async {
    try {
      getPref();
      final response = await http
          // ignore: prefer_interpolation_to_compose_strings
          .delete(Uri.parse('$host/api/mobil/' + platMobil.toString()),
              headers: {
            // ignore: prefer_interpolation_to_compose_strings
            'Authorization': 'Bearer ' + _token,
          });
      if (response.statusCode == 200) {
        return ErrorMSG.fromJson(jsonDecode(response.body));
      } else {
        return ErrorMSG(
            success: false, message: 'Err, periksan kembali inputan anda');
      }
    } catch (e) {
      ErrorMSG responseRequest =
          ErrorMSG(success: false, message: 'error caught: $e');
      return responseRequest;
    }
  }
}
