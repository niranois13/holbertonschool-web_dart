import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  double total = 0;
  try {
    String user = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(user);
    String id = userData['id'];
    String orders = await fetchUserOrders(id);
    List<dynamic> userOrders = jsonDecode(orders);

    for (var order in userOrders) {
      String products = await fetchProductPrice(order);
      total += double.parse(products);
    }

    return total;

    } catch (error) {
      print('error caught: $error');
      return -1;
    }
}