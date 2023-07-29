class PrayerModel {
  int? code;
  String? status;
  List<Data>? data;

  PrayerModel({this.code, this.status, this.data});

  PrayerModel.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    status = json["status"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  static List<PrayerModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => PrayerModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["status"] = status;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  PrayerModel copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) =>
      PrayerModel(
        code: code ?? this.code,
        status: status ?? this.status,
        data: data ?? this.data,
      );
}

class Data {
  Timings? timings;
  Date? date;
  Meta? meta;

  Data({this.timings, this.date, this.meta});

  Data.fromJson(Map<String, dynamic> json) {
    timings =
        json["timings"] == null ? null : Timings.fromJson(json["timings"]);
    date = json["date"] == null ? null : Date.fromJson(json["date"]);
    meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (timings != null) {
      _data["timings"] = timings?.toJson();
    }
    if (date != null) {
      _data["date"] = date?.toJson();
    }
    if (meta != null) {
      _data["meta"] = meta?.toJson();
    }
    return _data;
  }

  Data copyWith({
    Timings? timings,
    Date? date,
    Meta? meta,
  }) =>
      Data(
        timings: timings ?? this.timings,
        date: date ?? this.date,
        meta: meta ?? this.meta,
      );
}

class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;

  Meta(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.method,
      this.latitudeAdjustmentMethod,
      this.midnightMode,
      this.school,
      this.offset});

  Meta.fromJson(Map<String, dynamic> json) {
    latitude = json["latitude"];
    longitude = json["longitude"];
    timezone = json["timezone"];
    method = json["method"] == null ? null : Method.fromJson(json["method"]);
    latitudeAdjustmentMethod = json["latitudeAdjustmentMethod"];
    midnightMode = json["midnightMode"];
    school = json["school"];
    offset = json["offset"] == null ? null : Offset.fromJson(json["offset"]);
  }

  static List<Meta> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Meta.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["timezone"] = timezone;
    if (method != null) {
      _data["method"] = method?.toJson();
    }
    _data["latitudeAdjustmentMethod"] = latitudeAdjustmentMethod;
    _data["midnightMode"] = midnightMode;
    _data["school"] = school;
    if (offset != null) {
      _data["offset"] = offset?.toJson();
    }
    return _data;
  }

  Meta copyWith({
    double? latitude,
    double? longitude,
    String? timezone,
    Method? method,
    String? latitudeAdjustmentMethod,
    String? midnightMode,
    String? school,
    Offset? offset,
  }) =>
      Meta(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        timezone: timezone ?? this.timezone,
        method: method ?? this.method,
        latitudeAdjustmentMethod:
            latitudeAdjustmentMethod ?? this.latitudeAdjustmentMethod,
        midnightMode: midnightMode ?? this.midnightMode,
        school: school ?? this.school,
        offset: offset ?? this.offset,
      );
}

class Offset {
  int? imsak;
  int? fajr;
  int? sunrise;
  int? dhuhr;
  int? asr;
  int? maghrib;
  int? sunset;
  int? isha;
  int? midnight;

  Offset(
      {this.imsak,
      this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.sunset,
      this.isha,
      this.midnight});

  Offset.fromJson(Map<String, dynamic> json) {
    imsak = json["Imsak"];
    fajr = json["Fajr"];
    sunrise = json["Sunrise"];
    dhuhr = json["Dhuhr"];
    asr = json["Asr"];
    maghrib = json["Maghrib"];
    sunset = json["Sunset"];
    isha = json["Isha"];
    midnight = json["Midnight"];
  }

  static List<Offset> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Offset.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Imsak"] = imsak;
    _data["Fajr"] = fajr;
    _data["Sunrise"] = sunrise;
    _data["Dhuhr"] = dhuhr;
    _data["Asr"] = asr;
    _data["Maghrib"] = maghrib;
    _data["Sunset"] = sunset;
    _data["Isha"] = isha;
    _data["Midnight"] = midnight;
    return _data;
  }

  Offset copyWith({
    int? imsak,
    int? fajr,
    int? sunrise,
    int? dhuhr,
    int? asr,
    int? maghrib,
    int? sunset,
    int? isha,
    int? midnight,
  }) =>
      Offset(
        imsak: imsak ?? this.imsak,
        fajr: fajr ?? this.fajr,
        sunrise: sunrise ?? this.sunrise,
        dhuhr: dhuhr ?? this.dhuhr,
        asr: asr ?? this.asr,
        maghrib: maghrib ?? this.maghrib,
        sunset: sunset ?? this.sunset,
        isha: isha ?? this.isha,
        midnight: midnight ?? this.midnight,
      );
}

class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({this.id, this.name, this.params, this.location});

  Method.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    params = json["params"] == null ? null : Params.fromJson(json["params"]);
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
  }

  static List<Method> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Method.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    if (params != null) {
      _data["params"] = params?.toJson();
    }
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    return _data;
  }

  Method copyWith({
    int? id,
    String? name,
    Params? params,
    Location? location,
  }) =>
      Method(
        id: id ?? this.id,
        name: name ?? this.name,
        params: params ?? this.params,
        location: location ?? this.location,
      );
}

class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    latitude = json["latitude"];
    longitude = json["longitude"];
  }

  static List<Location> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Location.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    return _data;
  }

  Location copyWith({
    double? latitude,
    double? longitude,
  }) =>
      Location(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
}

class Params {
  int? fajr;
  int? isha;

  Params({this.fajr, this.isha});

  Params.fromJson(Map<String, dynamic> json) {
    fajr = json["Fajr"];
    isha = json["Isha"];
  }

  static List<Params> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Params.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Fajr"] = fajr;
    _data["Isha"] = isha;
    return _data;
  }

  Params copyWith({
    int? fajr,
    int? isha,
  }) =>
      Params(
        fajr: fajr ?? this.fajr,
        isha: isha ?? this.isha,
      );
}

class Date {
  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;

  Date({this.readable, this.timestamp, this.gregorian, this.hijri});

  Date.fromJson(Map<String, dynamic> json) {
    readable = json["readable"];
    timestamp = json["timestamp"];
    gregorian = json["gregorian"] == null
        ? null
        : Gregorian.fromJson(json["gregorian"]);
    hijri = json["hijri"] == null ? null : Hijri.fromJson(json["hijri"]);
  }

  static List<Date> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Date.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["readable"] = readable;
    _data["timestamp"] = timestamp;
    if (gregorian != null) {
      _data["gregorian"] = gregorian?.toJson();
    }
    if (hijri != null) {
      _data["hijri"] = hijri?.toJson();
    }
    return _data;
  }

  Date copyWith({
    String? readable,
    String? timestamp,
    Gregorian? gregorian,
    Hijri? hijri,
  }) =>
      Date(
        readable: readable ?? this.readable,
        timestamp: timestamp ?? this.timestamp,
        gregorian: gregorian ?? this.gregorian,
        hijri: hijri ?? this.hijri,
      );
}

class Hijri {
  String? date;
  String? format;
  String? day;
  Weekday1? weekday;
  Month1? month;
  String? year;
  Designation1? designation;
  List<dynamic>? holidays;

  Hijri(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation,
      this.holidays});

  Hijri.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    format = json["format"];
    day = json["day"];
    weekday =
        json["weekday"] == null ? null : Weekday1.fromJson(json["weekday"]);
    month = json["month"] == null ? null : Month1.fromJson(json["month"]);
    year = json["year"];
    designation = json["designation"] == null
        ? null
        : Designation1.fromJson(json["designation"]);
    holidays = json["holidays"] ?? [];
  }

  static List<Hijri> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Hijri.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["format"] = format;
    _data["day"] = day;
    if (weekday != null) {
      _data["weekday"] = weekday?.toJson();
    }
    if (month != null) {
      _data["month"] = month?.toJson();
    }
    _data["year"] = year;
    if (designation != null) {
      _data["designation"] = designation?.toJson();
    }
    if (holidays != null) {
      _data["holidays"] = holidays;
    }
    return _data;
  }

  Hijri copyWith({
    String? date,
    String? format,
    String? day,
    Weekday1? weekday,
    Month1? month,
    String? year,
    Designation1? designation,
    List<dynamic>? holidays,
  }) =>
      Hijri(
        date: date ?? this.date,
        format: format ?? this.format,
        day: day ?? this.day,
        weekday: weekday ?? this.weekday,
        month: month ?? this.month,
        year: year ?? this.year,
        designation: designation ?? this.designation,
        holidays: holidays ?? this.holidays,
      );
}

class Designation1 {
  String? abbreviated;
  String? expanded;

  Designation1({this.abbreviated, this.expanded});

  Designation1.fromJson(Map<String, dynamic> json) {
    abbreviated = json["abbreviated"];
    expanded = json["expanded"];
  }

  static List<Designation1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Designation1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["abbreviated"] = abbreviated;
    _data["expanded"] = expanded;
    return _data;
  }

  Designation1 copyWith({
    String? abbreviated,
    String? expanded,
  }) =>
      Designation1(
        abbreviated: abbreviated ?? this.abbreviated,
        expanded: expanded ?? this.expanded,
      );
}

class Month1 {
  int? number;
  String? en;
  String? ar;

  Month1({this.number, this.en, this.ar});

  Month1.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    en = json["en"];
    ar = json["ar"];
  }

  static List<Month1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Month1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["number"] = number;
    _data["en"] = en;
    _data["ar"] = ar;
    return _data;
  }

  Month1 copyWith({
    int? number,
    String? en,
    String? ar,
  }) =>
      Month1(
        number: number ?? this.number,
        en: en ?? this.en,
        ar: ar ?? this.ar,
      );
}

class Weekday1 {
  String? en;
  String? ar;

  Weekday1({this.en, this.ar});

  Weekday1.fromJson(Map<String, dynamic> json) {
    en = json["en"];
    ar = json["ar"];
  }

  static List<Weekday1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Weekday1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["en"] = en;
    _data["ar"] = ar;
    return _data;
  }

  Weekday1 copyWith({
    String? en,
    String? ar,
  }) =>
      Weekday1(
        en: en ?? this.en,
        ar: ar ?? this.ar,
      );
}

class Gregorian {
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;

  Gregorian(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation});

  Gregorian.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    format = json["format"];
    day = json["day"];
    weekday =
        json["weekday"] == null ? null : Weekday.fromJson(json["weekday"]);
    month = json["month"] == null ? null : Month.fromJson(json["month"]);
    year = json["year"];
    designation = json["designation"] == null
        ? null
        : Designation.fromJson(json["designation"]);
  }

  static List<Gregorian> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Gregorian.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["format"] = format;
    _data["day"] = day;
    if (weekday != null) {
      _data["weekday"] = weekday?.toJson();
    }
    if (month != null) {
      _data["month"] = month?.toJson();
    }
    _data["year"] = year;
    if (designation != null) {
      _data["designation"] = designation?.toJson();
    }
    return _data;
  }

  Gregorian copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
  }) =>
      Gregorian(
        date: date ?? this.date,
        format: format ?? this.format,
        day: day ?? this.day,
        weekday: weekday ?? this.weekday,
        month: month ?? this.month,
        year: year ?? this.year,
        designation: designation ?? this.designation,
      );
}

class Designation {
  String? abbreviated;
  String? expanded;

  Designation({this.abbreviated, this.expanded});

  Designation.fromJson(Map<String, dynamic> json) {
    abbreviated = json["abbreviated"];
    expanded = json["expanded"];
  }

  static List<Designation> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Designation.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["abbreviated"] = abbreviated;
    _data["expanded"] = expanded;
    return _data;
  }

  Designation copyWith({
    String? abbreviated,
    String? expanded,
  }) =>
      Designation(
        abbreviated: abbreviated ?? this.abbreviated,
        expanded: expanded ?? this.expanded,
      );
}

class Month {
  int? number;
  String? en;

  Month({this.number, this.en});

  Month.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    en = json["en"];
  }

  static List<Month> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Month.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["number"] = number;
    _data["en"] = en;
    return _data;
  }

  Month copyWith({
    int? number,
    String? en,
  }) =>
      Month(
        number: number ?? this.number,
        en: en ?? this.en,
      );
}

class Weekday {
  String? en;

  Weekday({this.en});

  Weekday.fromJson(Map<String, dynamic> json) {
    en = json["en"];
  }

  static List<Weekday> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Weekday.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["en"] = en;
    return _data;
  }

  Weekday copyWith({
    String? en,
  }) =>
      Weekday(
        en: en ?? this.en,
      );
}

class Timings {
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;

  Timings(
      {this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.sunset,
      this.maghrib,
      this.isha,
      this.imsak,
      this.midnight,
      this.firstthird,
      this.lastthird});

  Timings.fromJson(Map<String, dynamic> json) {
    fajr = json["Fajr"];
    sunrise = json["Sunrise"];
    dhuhr = json["Dhuhr"];
    asr = json["Asr"];
    sunset = json["Sunset"];
    maghrib = json["Maghrib"];
    isha = json["Isha"];
    imsak = json["Imsak"];
    midnight = json["Midnight"];
    firstthird = json["Firstthird"];
    lastthird = json["Lastthird"];
  }

  static List<Timings> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Timings.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Fajr"] = fajr;
    _data["Sunrise"] = sunrise;
    _data["Dhuhr"] = dhuhr;
    _data["Asr"] = asr;
    _data["Sunset"] = sunset;
    _data["Maghrib"] = maghrib;
    _data["Isha"] = isha;
    _data["Imsak"] = imsak;
    _data["Midnight"] = midnight;
    _data["Firstthird"] = firstthird;
    _data["Lastthird"] = lastthird;
    return _data;
  }

  Timings copyWith({
    String? fajr,
    String? sunrise,
    String? dhuhr,
    String? asr,
    String? sunset,
    String? maghrib,
    String? isha,
    String? imsak,
    String? midnight,
    String? firstthird,
    String? lastthird,
  }) =>
      Timings(
        fajr: fajr ?? this.fajr,
        sunrise: sunrise ?? this.sunrise,
        dhuhr: dhuhr ?? this.dhuhr,
        asr: asr ?? this.asr,
        sunset: sunset ?? this.sunset,
        maghrib: maghrib ?? this.maghrib,
        isha: isha ?? this.isha,
        imsak: imsak ?? this.imsak,
        midnight: midnight ?? this.midnight,
        firstthird: firstthird ?? this.firstthird,
        lastthird: lastthird ?? this.lastthird,
      );
}
