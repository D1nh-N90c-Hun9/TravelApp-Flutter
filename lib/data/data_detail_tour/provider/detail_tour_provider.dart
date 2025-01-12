// import 'dart:convert';

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app/data/common/const.dart';

class DetailTourDataProvider {
  // API tour Random
  Future<String> getCurrentTourRandom() async {
    try {
      // Lấy dữ liệu Json từ Api trả về
      final res = await http.get(
        Uri.parse(
          'http://${CommonConst.ipconfig}/api/TouristAttraction/GetTouristAttractionRandom',
        ),
        headers: {'Content-Type': 'application/json'},
      );

      // 200 : Oke
      // 404 : Sai Url Api
      // 400 : Sai model body

      // print("Status API : ${res.statusCode}");
      // print("Result API : ${res.reasonPhrase}");
      // print("Body API : ${res.body}");

      // lấy thông tin nội dung
      return res.body;
    } catch (e) {
      print("error : ${e.toString()}");
      throw e.toString();
    }
  }

  // API tour most stars
  Future<String> getCurrentTourStar() async {
    try {
      // Lấy dữ liệu Json từ Api trả về
      final res = await http.get(
        Uri.parse(
          'http://${CommonConst.ipconfig}/api/TouristAttraction/GetTouristAttractionMostStars',
        ),
        headers: {'Content-Type': 'application/json'},
      );

      // 200 : Oke
      // 404 : Sai Url Api
      // 400 : Sai model body

      // print("Status API : ${res.statusCode}");
      // print("Result API : ${res.reasonPhrase}");
      // print("Body API : ${res.body}");

      // lấy thông tin nội dung
      return res.body;
    } catch (e) {
      print("error : ${e.toString()}");
      throw e.toString();
    }
  }

  // API tour Search
  Future<String> getCurrentTourSearch(Map body) async {
    try {
      // Lấy dữ liệu Json từ Api trả về
      final res = await http.post(
        Uri.parse(
          'http://${CommonConst.ipconfig}/api/TouristAttraction/SearchTouristAttraction',
        ),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'},
      );

      // 200 : Oke
      // 404 : Sai Url Api
      // 400 : Sai model body

      // print("Status API : ${res.statusCode}");
      // print("Result API : ${res.reasonPhrase}");
      // print("Body API : ${res.body}");

      // lấy thông tin nội dung
      return res.body;
    } catch (e) {
      print("error : ${e.toString()}");
      throw e.toString();
    }
  }

  // API MarkTour
  Future<String> getDetailMarkTour(int idAcc) async {
    try {
      // Lấy dữ liệu Json từ Api trả về
      final res = await http.post(
        Uri.parse(
          'http://${CommonConst.ipconfig}/api/TouristAttraction/GetMarkTourById',
        ),
        body: jsonEncode(idAcc),
        headers: {'Content-Type': 'application/json'},
      );

      // 200 : Oke
      // 404 : Sai Url Api
      // 400 : Sai model body

      // print("Status API : ${res.statusCode}");
      // print("Result API : ${res.reasonPhrase}");
      // print("Body API : ${res.body}");

      // lấy thông tin nội dung
      return res.body;
    } catch (e) {
      print("error : ${e.toString()}");
      throw e.toString();
    }
  }

  // Hàm lấy dữ liệu Login từ Api
  Future<String> handleMarkTour(Map body) async {
    try {
      // Lấy dữ liệu Json từ Api trả về
      final res = await http.post(
        Uri.parse(
          'http://${CommonConst.ipconfig}/api/TouristAttraction/HandleMarkTourById',
        ),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'},
      );

      // 200 : Oke
      // 404 : Sai Url Api
      // 400 : Sai model body

      // print("Status API : ${res.statusCode}");
      // print("Result API : ${res.reasonPhrase}");
      // print("Body API : ${res.body}");

      // lấy thông tin nội dung
      return res.body;
    } catch (e) {
      print("error : ${e.toString()}");
      throw e.toString();
    }
  }
}
