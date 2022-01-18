import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:petify/components/pet_card.dart';

class LikedNotifier extends ChangeNotifier {
  List<PetCard> _petCardList = [];

  UnmodifiableListView<PetCard> get petCardList =>
      UnmodifiableListView(_petCardList);

  void add(PetCard petCard) {
    _petCardList.add(petCard);
    notifyListeners();
  }

  void remove(PetCard petCard) {
    _petCardList.removeWhere((item) => item.name == petCard.name);
    notifyListeners();
  }
}
