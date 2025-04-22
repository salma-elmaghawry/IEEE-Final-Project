import 'room_class.dart';

class Hotel {
  String name;
  String location;
  List<Room> rooms;

  Hotel(this.name, this.location, this.rooms);

  List<Room> availableRooms() {
    return rooms.where((room) => room.isAvailable).toList();
  }
}




