import 'booking_class.dart';
import 'customer_class.dart';
import 'hotel_class.dart';
import 'room_class.dart';

void main() {
  Room room1 = Room(101, "Single", 100.0);
  Room room2 = Room(102, "Double", 150.0);
  Room room3 = Room(103, "Suite", 250.0);

  Hotel myHotel = Hotel("Sunrise Hotel", "Cairo", [room1, room2, room3]);

  print("Available Rooms:");
  for (var room in myHotel.availableRooms()) {
    print("Room ${room.number} - ${room.type} - \$${room.pricePerNight}");
  }

  Customer customer = Customer("Salma", "salma@example.com", "0123456789");

  DateTime checkIn = DateTime(2025, 5, 1);
  DateTime checkOut = DateTime(2025, 5, 5);
  Booking booking = Booking(customer, room2, checkIn, checkOut);

  print("\nBooking Confirmed:");
  print("Customer: ${booking.customer.name}");
  print("Room Number: ${booking.room.number}");
  print("Check-in: ${booking.checkInDate}");
  print("Check-out: ${booking.checkOutDate}");
  print("Total Price: \$${booking.totalPrice}");

  print("\nUpdated Available Rooms:");
  for (var room in myHotel.availableRooms()) {
    print("Room ${room.number} - ${room.type} - \$${room.pricePerNight}");
  }
}
