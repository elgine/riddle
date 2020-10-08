import 'package:dio/dio.dart';
import './url.dart';

class API {
  Dio instance;
  API(this.instance);

  home(
      [Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      void Function(int, int) onReceiveProgress]) {
    return this.instance.get(Url.home,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  books(
      [Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      void Function(int, int) onReceiveProgress]) {
    return this.instance.get(Url.books,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  book(String bookLink,
      [Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      void Function(int, int) onReceiveProgress]) {
    return this.instance.get(Url.book,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  chapter(String bookLink,
      [Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      void Function(int, int) onReceiveProgress]) {
    return this.instance.get(Url.chapter,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  search(
      [Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      void Function(int, int) onReceiveProgress]) {
    return this.instance.get(Url.search,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }
}
