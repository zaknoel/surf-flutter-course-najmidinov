///model for Sights

class Sight {
  String name; //название достопримечательности
  Location location; //координаты места
  String url; //путь до фотографии в интернете
  String details; //описание достопримечательности
  Types type; //тип достопримечательности.
  Sight({this.name, this.location, this.url, this.details, this.type});
}

//model for location coordinates
class Location {
  double lat;
  double lon;
  Location(lat, lon);
}

//enum for types of interesting places
enum Types { city, museum, park, waterfall, mountain }


//names for types
Map<Types, String> typeNames = {
  Types.city: "Город",
  Types.museum: "музей",
  Types.park: "Парк",
  Types.waterfall: "Водопад",
  Types.mountain: "Горы",
};

