const String mockWeatherResponse = '''
{
  "coord": {
    "lon": 1.02,
    "lat": 52.07
  },
  "weather": [
    {
      "id": 804,
      "main": "Clouds",
      "description": "overcast clouds",
      "icon": "04n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 294.17,
    "feels_like": 294.08,
    "temp_min": 292.88,
    "temp_max": 295.11,
    "pressure": 1010,
    "humidity": 67
  },
  "visibility": 10000,
  "wind": {
    "speed": 1.34,
    "deg": 200
  },
  "clouds": {
    "all": 100
  },
  "dt": 1663009404,
  "sys": {
    "type": 2,
    "id": 47675,
    "country": "GB",
    "sunrise": 1662960321,
    "sunset": 1663006770
  },
  "timezone": 3600,
  "id": 2654928,
  "name": "Bramford",
  "cod": 200
}
''';
