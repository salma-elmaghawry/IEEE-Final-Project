class Room {
  int number;
  String type;
  double pricePerNight;
  bool isAvailable;

  Room(this.number, this.type, this.pricePerNight, {this.isAvailable = true});
}
