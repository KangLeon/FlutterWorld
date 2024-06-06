/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-06 16:51:11
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-06 17:27:53
 * @FilePath: /flutter_application_1/lib/common/request/request.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class ApiService {
  // Dio 实例
  late Dio _dio;

  // 单例模式
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com', // 公共base URL
        connectTimeout: const Duration(seconds: 5000), // 连接超时时间
        receiveTimeout: const Duration(seconds: 3000), // 接收数据超时时间
      ),
    );

    // 添加拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // 在请求之前做一些事情
        // 比如添加认证 token
        options.headers['Authorization'] = 'Bearer your_token';
        return handler.next(options); //继续发送请求
      },
      onResponse: (response, handler) {
        // 在响应之前做一些事情
        return handler.next(response); //继续处理响应
      },
      onError: (DioException e, handler) {
        // 当请求失败时做一些事情
        return handler.next(e); //继续处理错误
      },
    ));
  }

  // GET 请求
  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw Exception('GET request error: $e');
    }
  }

  // POST 请求
  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('POST request error: $e');
    }
  }

  // PUT 请求
  Future<Response> put(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.put(path, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('PUT request error: $e');
    }
  }

  // DELETE 请求
  Future<Response> delete(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(path, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('DELETE request error: $e');
    }
  }

  // 文件下载
  Future<String> downloadFile(String url, String fileName) async {
    try {
      final Directory tempDir = await getTemporaryDirectory();
      final String filePath = '${tempDir.path}/$fileName';

      final Response response = await _dio.download(
        url,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            print('Progress: ${(received / total * 100).toStringAsFixed(0)}%');
          }
        },
      );

      if (response.statusCode == 200) {
        print('File downloaded to $filePath');
        return filePath;
      } else {
        throw Exception('Failed to download file');
      }
    } catch (e) {
      throw Exception('Error downloading file: $e');
    }
  }

  // 图片上传
  Future<Response> uploadImage(String path, File image) async {
    try {
      String fileName = image.path.split('/').last;
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(image.path, filename: fileName),
      });

      final response = await _dio.post(path, data: formData);
      return response;
    } on DioException catch (e) {
      throw Exception('Upload image error: $e');
    }
  }
}
