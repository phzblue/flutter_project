import 'package:dio/dio.dart';
import 'package:project1/class/profile.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://app.fakejson.com/q")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // @GET(Apis.profile)
  @POST('')
  Future<Profile> getProfile(@Body() Map<String, dynamic> payload);
}
