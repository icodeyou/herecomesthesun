const String mockForecastResponse = '''
{
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1663016400,
      "main": {
        "temp": 290.32,
        "feels_like": 289.82,
        "temp_min": 288.74,
        "temp_max": 290.32,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 935,
        "humidity": 66,
        "temp_kf": 1.58
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 15
      },
      "wind": {
        "speed": 2.03,
        "deg": 211,
        "gust": 1.86
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-12 21:00:00"
    },
    {
      "dt": 1663027200,
      "main": {
        "temp": 289.1,
        "feels_like": 288.53,
        "temp_min": 288.09,
        "temp_max": 289.1,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 934,
        "humidity": 68,
        "temp_kf": 1.01
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 9
      },
      "wind": {
        "speed": 1.79,
        "deg": 228,
        "gust": 1.66
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-13 00:00:00"
    },
    {
      "dt": 1663038000,
      "main": {
        "temp": 287.36,
        "feels_like": 286.72,
        "temp_min": 287.36,
        "temp_max": 287.36,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 934,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 1.68,
        "deg": 225,
        "gust": 1.56
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-13 03:00:00"
    },
    {
      "dt": 1663048800,
      "main": {
        "temp": 288.75,
        "feels_like": 288.19,
        "temp_min": 288.75,
        "temp_max": 288.75,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 934,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 4
      },
      "wind": {
        "speed": 1.28,
        "deg": 231,
        "gust": 1.26
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-13 06:00:00"
    },
    {
      "dt": 1663059600,
      "main": {
        "temp": 295.78,
        "feels_like": 295.27,
        "temp_min": 295.78,
        "temp_max": 295.78,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 935,
        "humidity": 45,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 23
      },
      "wind": {
        "speed": 1.05,
        "deg": 21,
        "gust": 1.29
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-13 09:00:00"
    },
    {
      "dt": 1663070400,
      "main": {
        "temp": 299.07,
        "feels_like": 298.66,
        "temp_min": 299.07,
        "temp_max": 299.07,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 935,
        "humidity": 36,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 25
      },
      "wind": {
        "speed": 1.55,
        "deg": 52,
        "gust": 2.13
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-13 12:00:00"
    },
    {
      "dt": 1663081200,
      "main": {
        "temp": 298.61,
        "feels_like": 298.23,
        "temp_min": 298.61,
        "temp_max": 298.61,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 934,
        "humidity": 39,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 72
      },
      "wind": {
        "speed": 1.19,
        "deg": 84,
        "gust": 2.23
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-13 15:00:00"
    },
    {
      "dt": 1663092000,
      "main": {
        "temp": 291.5,
        "feels_like": 291.04,
        "temp_min": 291.5,
        "temp_max": 291.5,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 933,
        "humidity": 63,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 86
      },
      "wind": {
        "speed": 1.83,
        "deg": 186,
        "gust": 3.4
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-13 18:00:00"
    },
    {
      "dt": 1663102800,
      "main": {
        "temp": 289.28,
        "feels_like": 288.7,
        "temp_min": 289.28,
        "temp_max": 289.28,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 933,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 85
      },
      "wind": {
        "speed": 2.85,
        "deg": 208,
        "gust": 4.04
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-13 21:00:00"
    },
    {
      "dt": 1663113600,
      "main": {
        "temp": 288.7,
        "feels_like": 288.16,
        "temp_min": 288.7,
        "temp_max": 288.7,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 933,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 2.96,
        "deg": 205,
        "gust": 4.43
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-14 00:00:00"
    },
    {
      "dt": 1663124400,
      "main": {
        "temp": 288.65,
        "feels_like": 288.37,
        "temp_min": 288.65,
        "temp_max": 288.65,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 931,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 89
      },
      "wind": {
        "speed": 3.17,
        "deg": 205,
        "gust": 5.68
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-14 03:00:00"
    },
    {
      "dt": 1663135200,
      "main": {
        "temp": 289.96,
        "feels_like": 289.81,
        "temp_min": 289.96,
        "temp_max": 289.96,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 932,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 91
      },
      "wind": {
        "speed": 2.17,
        "deg": 215,
        "gust": 4.4
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-14 06:00:00"
    },
    {
      "dt": 1663146000,
      "main": {
        "temp": 295.93,
        "feels_like": 295.8,
        "temp_min": 295.93,
        "temp_max": 295.93,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 933,
        "humidity": 59,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 1.99,
        "deg": 207,
        "gust": 5.21
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-14 09:00:00"
    },
    {
      "dt": 1663156800,
      "main": {
        "temp": 298.2,
        "feels_like": 298.07,
        "temp_min": 298.2,
        "temp_max": 298.2,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 933,
        "humidity": 50,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.4,
        "deg": 213,
        "gust": 7.6
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-14 12:00:00"
    },
    {
      "dt": 1663167600,
      "main": {
        "temp": 297.03,
        "feels_like": 296.86,
        "temp_min": 297.03,
        "temp_max": 297.03,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 932,
        "humidity": 53,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.32,
        "deg": 209,
        "gust": 6.9
      },
      "visibility": 10000,
      "pop": 0.13,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-14 15:00:00"
    },
    {
      "dt": 1663178400,
      "main": {
        "temp": 292.3,
        "feels_like": 292.26,
        "temp_min": 292.3,
        "temp_max": 292.3,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 931,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.79,
        "deg": 192,
        "gust": 7.16
      },
      "visibility": 10000,
      "pop": 0.22,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-14 18:00:00"
    },
    {
      "dt": 1663189200,
      "main": {
        "temp": 290.4,
        "feels_like": 290.45,
        "temp_min": 290.4,
        "temp_max": 290.4,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 930,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.17,
        "deg": 184,
        "gust": 8.36
      },
      "visibility": 10000,
      "pop": 0.11,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-14 21:00:00"
    },
    {
      "dt": 1663200000,
      "main": {
        "temp": 290.8,
        "feels_like": 290.76,
        "temp_min": 290.8,
        "temp_max": 290.8,
        "pressure": 1009,
        "sea_level": 1009,
        "grnd_level": 930,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 3.73,
        "deg": 206,
        "gust": 8.57
      },
      "visibility": 10000,
      "pop": 0.25,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-15 00:00:00"
    },
    {
      "dt": 1663210800,
      "main": {
        "temp": 290.24,
        "feels_like": 290.09,
        "temp_min": 290.24,
        "temp_max": 290.24,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 929,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 95
      },
      "wind": {
        "speed": 2.77,
        "deg": 209,
        "gust": 5.08
      },
      "visibility": 10000,
      "pop": 0.32,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-15 03:00:00"
    },
    {
      "dt": 1663221600,
      "main": {
        "temp": 291.03,
        "feels_like": 290.86,
        "temp_min": 291.03,
        "temp_max": 291.03,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 929,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 94
      },
      "wind": {
        "speed": 3.03,
        "deg": 200,
        "gust": 5.81
      },
      "visibility": 10000,
      "pop": 0.32,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-15 06:00:00"
    },
    {
      "dt": 1663232400,
      "main": {
        "temp": 297.08,
        "feels_like": 296.73,
        "temp_min": 297.08,
        "temp_max": 297.08,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 930,
        "humidity": 46,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 90
      },
      "wind": {
        "speed": 3.23,
        "deg": 237,
        "gust": 10.38
      },
      "visibility": 10000,
      "pop": 0.24,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-15 09:00:00"
    },
    {
      "dt": 1663243200,
      "main": {
        "temp": 299.02,
        "feels_like": 298.68,
        "temp_min": 299.02,
        "temp_max": 299.02,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 930,
        "humidity": 39,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 93
      },
      "wind": {
        "speed": 5.49,
        "deg": 226,
        "gust": 10.53
      },
      "visibility": 10000,
      "pop": 0.2,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-15 12:00:00"
    },
    {
      "dt": 1663254000,
      "main": {
        "temp": 298.59,
        "feels_like": 298.16,
        "temp_min": 298.59,
        "temp_max": 298.59,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 929,
        "humidity": 37,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 62
      },
      "wind": {
        "speed": 5.36,
        "deg": 224,
        "gust": 12.51
      },
      "visibility": 10000,
      "pop": 0.07,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-15 15:00:00"
    },
    {
      "dt": 1663264800,
      "main": {
        "temp": 292.97,
        "feels_like": 292.47,
        "temp_min": 292.97,
        "temp_max": 292.97,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 928,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 49
      },
      "wind": {
        "speed": 4.29,
        "deg": 217,
        "gust": 9.95
      },
      "visibility": 10000,
      "pop": 0.09,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-15 18:00:00"
    },
    {
      "dt": 1663275600,
      "main": {
        "temp": 290.5,
        "feels_like": 290.14,
        "temp_min": 290.5,
        "temp_max": 290.5,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 927,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 11
      },
      "wind": {
        "speed": 3.76,
        "deg": 202,
        "gust": 7.36
      },
      "visibility": 10000,
      "pop": 0.07,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-15 21:00:00"
    },
    {
      "dt": 1663286400,
      "main": {
        "temp": 290,
        "feels_like": 289.75,
        "temp_min": 290,
        "temp_max": 290,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 927,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 11
      },
      "wind": {
        "speed": 3.7,
        "deg": 205,
        "gust": 6.89
      },
      "visibility": 10000,
      "pop": 0.1,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-16 00:00:00"
    },
    {
      "dt": 1663297200,
      "main": {
        "temp": 290.01,
        "feels_like": 289.76,
        "temp_min": 290.01,
        "temp_max": 290.01,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 925,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 65
      },
      "wind": {
        "speed": 3.5,
        "deg": 204,
        "gust": 6.99
      },
      "visibility": 10000,
      "pop": 0.16,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-16 03:00:00"
    },
    {
      "dt": 1663308000,
      "main": {
        "temp": 291.24,
        "feels_like": 290.93,
        "temp_min": 291.24,
        "temp_max": 291.24,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 925,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 60
      },
      "wind": {
        "speed": 3.25,
        "deg": 207,
        "gust": 8.4
      },
      "visibility": 10000,
      "pop": 0.14,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-16 06:00:00"
    },
    {
      "dt": 1663318800,
      "main": {
        "temp": 296.39,
        "feels_like": 295.97,
        "temp_min": 296.39,
        "temp_max": 296.39,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 926,
        "humidity": 46,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 43
      },
      "wind": {
        "speed": 5.28,
        "deg": 231,
        "gust": 12.81
      },
      "visibility": 10000,
      "pop": 0.22,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-16 09:00:00"
    },
    {
      "dt": 1663329600,
      "main": {
        "temp": 298.41,
        "feels_like": 297.98,
        "temp_min": 298.41,
        "temp_max": 298.41,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 926,
        "humidity": 38,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 59
      },
      "wind": {
        "speed": 5.32,
        "deg": 233,
        "gust": 10.89
      },
      "visibility": 10000,
      "pop": 0.16,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-16 12:00:00"
    },
    {
      "dt": 1663340400,
      "main": {
        "temp": 296.77,
        "feels_like": 296.31,
        "temp_min": 296.77,
        "temp_max": 296.77,
        "pressure": 1002,
        "sea_level": 1002,
        "grnd_level": 924,
        "humidity": 43,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 63
      },
      "wind": {
        "speed": 5.01,
        "deg": 231,
        "gust": 10.28
      },
      "visibility": 10000,
      "pop": 0.07,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-16 15:00:00"
    },
    {
      "dt": 1663351200,
      "main": {
        "temp": 290.56,
        "feels_like": 290.21,
        "temp_min": 290.56,
        "temp_max": 290.56,
        "pressure": 1002,
        "sea_level": 1002,
        "grnd_level": 923,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 58
      },
      "wind": {
        "speed": 3.54,
        "deg": 212,
        "gust": 6.65
      },
      "visibility": 10000,
      "pop": 0.2,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-16 18:00:00"
    },
    {
      "dt": 1663362000,
      "main": {
        "temp": 288.49,
        "feels_like": 288.33,
        "temp_min": 288.49,
        "temp_max": 288.49,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 924,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 68
      },
      "wind": {
        "speed": 1.76,
        "deg": 198,
        "gust": 3.61
      },
      "visibility": 10000,
      "pop": 0.6,
      "rain": {
        "3h": 0.21
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-16 21:00:00"
    },
    {
      "dt": 1663372800,
      "main": {
        "temp": 286.86,
        "feels_like": 286.85,
        "temp_min": 286.86,
        "temp_max": 286.86,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 924,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 81
      },
      "wind": {
        "speed": 2.21,
        "deg": 19,
        "gust": 4.58
      },
      "visibility": 3271,
      "pop": 0.98,
      "rain": {
        "3h": 3.45
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-17 00:00:00"
    },
    {
      "dt": 1663383600,
      "main": {
        "temp": 285.27,
        "feels_like": 285.07,
        "temp_min": 285.27,
        "temp_max": 285.27,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 925,
        "humidity": 97,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 2.85,
        "deg": 32,
        "gust": 6.35
      },
      "visibility": 2569,
      "pop": 0.83,
      "rain": {
        "3h": 7.16
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-17 03:00:00"
    },
    {
      "dt": 1663394400,
      "main": {
        "temp": 282.65,
        "feels_like": 280.86,
        "temp_min": 282.65,
        "temp_max": 282.65,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 926,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.36,
        "deg": 35,
        "gust": 9.99
      },
      "visibility": 637,
      "pop": 0.92,
      "rain": {
        "3h": 7.96
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-17 06:00:00"
    },
    {
      "dt": 1663405200,
      "main": {
        "temp": 281.5,
        "feels_like": 278.92,
        "temp_min": 281.5,
        "temp_max": 281.5,
        "pressure": 1009,
        "sea_level": 1009,
        "grnd_level": 927,
        "humidity": 97,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.44,
        "deg": 48,
        "gust": 12.08
      },
      "visibility": 1158,
      "pop": 1,
      "rain": {
        "3h": 10.56
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-17 09:00:00"
    },
    {
      "dt": 1663416000,
      "main": {
        "temp": 280.74,
        "feels_like": 278.02,
        "temp_min": 280.74,
        "temp_max": 280.74,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 930,
        "humidity": 96,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 502,
          "main": "Rain",
          "description": "heavy intensity rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.35,
        "deg": 65,
        "gust": 9.84
      },
      "visibility": 3410,
      "pop": 1,
      "rain": {
        "3h": 16.55
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-17 12:00:00"
    },
    {
      "dt": 1663426800,
      "main": {
        "temp": 280.98,
        "feels_like": 279.7,
        "temp_min": 280.98,
        "temp_max": 280.98,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 930,
        "humidity": 93,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 2.13,
        "deg": 82,
        "gust": 8.29
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 5.23
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2022-09-17 15:00:00"
    },
    {
      "dt": 1663437600,
      "main": {
        "temp": 281.34,
        "feels_like": 281.34,
        "temp_min": 281.34,
        "temp_max": 281.34,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 931,
        "humidity": 94,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 0.92,
        "deg": 286,
        "gust": 3.54
      },
      "visibility": 10000,
      "pop": 0.98,
      "rain": {
        "3h": 0.36
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2022-09-17 18:00:00"
    }
  ],
  "city": {
    "id": 3163858,
    "name": "Zocca",
    "coord": {
      "lat": 44.35,
      "lon": 10.98
    },
    "country": "IT",
    "population": 4593,
    "timezone": 7200,
    "sunrise": 1662958285,
    "sunset": 1663004026
  }
}
''';
