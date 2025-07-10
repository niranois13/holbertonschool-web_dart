import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  double total = 0;
  try {
    String user = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(user);
    String id = userData['id'];

    try {
      String orders = await fetchUserOrders(id);
      List<dynamic> userOrders = jsonDecode(orders);

      for (var order in userOrders) {
        try {
          String products = await fetchProductPrice(order);
          total += double.parse(products);
        } catch (error) {
          return -1;
        }
      }

    return total;

    } catch (error) {
    return -1;
    }
  } catch (error) {
    return -1;
  }
}