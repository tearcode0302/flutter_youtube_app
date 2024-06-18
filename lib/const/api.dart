import 'package:flutter_dotenv/flutter_dotenv.dart';

final API_KEY = dotenv.env['API_KEY'].toString();
final YOUTUBE_API_BASE_URL = dotenv.env['YOUTUBE_API_BASE_URL'].toString();
final CF_CHANNEL_ID = dotenv.get('CF_CHANNEL_ID').toString();
