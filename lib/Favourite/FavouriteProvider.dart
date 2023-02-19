import 'package:flutter/foundation.dart';

class FavouriteProvider extends ChangeNotifier
{
  List<int> _selectedItem=[];

  List<int> get selectedItem=>_selectedItem;

  void AddItem(int value)
  {
    _selectedItem.add(value);
    notifyListeners();

  }
  void RemoveItem(int value)
  {
    _selectedItem.remove(value);
    notifyListeners();

  }

}