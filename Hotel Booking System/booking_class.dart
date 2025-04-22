import 'customer_class.dart';
import 'room_class.dart';

class Booking {
  static int _bookingCounter = 0;

  int id;
  Customer customer;
  Room room;
  DateTime checkInDate;
  DateTime checkOutDate;
  double totalPrice;

  Booking(this.customer, this.room, this.checkInDate, this.checkOutDate)
      : id = ++_bookingCounter,
        totalPrice = _calculateTotalPrice(room, checkInDate, checkOutDate) {
    room.isAvailable = false;
  }

  static double _calculateTotalPrice(Room room, DateTime inDate, DateTime outDate) {
    int nights = outDate.difference(inDate).inDays;
    return nights * room.pricePerNight;
  }
}