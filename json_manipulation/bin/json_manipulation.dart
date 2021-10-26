import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) async {
  await initializeDateFormatting('id_ID');

  final List<Map<String, dynamic>> _listOfJson = [
    {
      "inventory_id": 9382,
      "name": "Brown Chair",
      "type": "furniture",
      "tags": ["chair", "furniture", "brown"],
      "purchased_at": 1579190471,
      "placement": {"room_id": 3, "name": "Meeting Room"}
    },
    {
      "inventory_id": 9380,
      "name": "Big Desk",
      "type": "furniture",
      "tags": ["desk", "furniture", "brown"],
      "purchased_at": 1579190642,
      "placement": {"room_id": 3, "name": "Meeting Room"}
    },
    {
      "inventory_id": 2932,
      "name": "LG Monitor 50 inch",
      "type": "electronic",
      "tags": ["monitor"],
      "purchased_at": 1579017842,
      "placement": {"room_id": 3, "name": "Lavender"}
    },
    {
      "inventory_id": 232,
      "name": "Sharp Pendingin Ruangan 2PK",
      "type": "electronic",
      "tags": ["ac"],
      "purchased_at": 1578931442,
      "placement": {"room_id": 5, "name": "Dhanapala"}
    },
    {
      "inventory_id": 9382,
      "name": "Alat Makan",
      "type": "tableware",
      "tags": ["spoon", "fork", "tableware"],
      "purchased_at": 1578672242,
      "placement": {"room_id": 10, "name": "Rajawali"}
    }
  ];

  print("1. Find items in the Meeting Room.");
  for (final Map<String, dynamic> item in _listOfJson) {
    if (item['placement']['name'] == 'Meeting Room') {
      print(item['name']);
    }
  }

  print('=============');

  print("2. Find all electronic devices.");
  for (final Map<String, dynamic> item in _listOfJson) {
    if (item['type'] == 'electronic') {
      print(item['name']);
    }
  }

  print('=============');

  print("3. Find all the furniture.");
  for (final Map<String, dynamic> item in _listOfJson) {
    if (item['type'] == 'furniture') {
      print(item['name']);
    }
  }

  print('=============');

  print("4. Find all items were purchased on 16 Januari 2020.");
  for (final Map<String, dynamic> item in _listOfJson) {
    final _date =
        DateTime.fromMillisecondsSinceEpoch(item['purchased_at'] * 1000);
    if (DateFormat('dd LLLL yyyy', 'id_ID').format(_date) ==
        '16 Januari 2020') {
      print(item['name']);
    }
  }

  print('=============');

  print("5. Find all items with brown color.");
  for (final Map<String, dynamic> item in _listOfJson) {
    if (item['tags'].contains('brown')) {
      print(item['name']);
    }
  }
}
