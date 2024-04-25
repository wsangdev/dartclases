// Manera como hacer una Peticion a una API en DART

import 'dart:async';
import 'package:http/http.dart' as http;

Future<String> getData() async {
  try {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Expando('fallo al traer la data');
    }
  } catch (err) {
    return Future.error(err.toString());
  }
}

// Funcion principal para poder llamar al metodo getData()
void main() async {
  try {
    String data = await getData();
    print('data loaded, $data');
  } catch (err) {
    print('error $err');
  }
}
