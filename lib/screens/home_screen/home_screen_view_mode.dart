import 'package:auto_route/auto_route.dart';
import 'package:dummy_ostello/components/atom/typography3.dart';
import 'package:dummy_ostello/model/amenities.dart';
import 'package:dummy_ostello/routes/routes_import.gr.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreenViewModel extends BaseViewModel {
  final selectedAminites = <Amenities>[];
  final amenitiesChips = <Chip>[];

  Future<void> onAmmenitiesClicked(BuildContext context) async {
    var value = await AutoRouter.of(context)
        .push(AmenitiesRoute(listOfAmenities: selectedAminites));
    updateAmenities(value as List<Amenities>?);
  }

  void updateAmenities(List<Amenities>? value) {
    if (value == null) return;

    selectedAminites.clear();
    amenitiesChips.clear();

    selectedAminites.addAll(value);

    for (var item in selectedAminites) {
      amenitiesChips.add(
        Chip(
          label: Typography3(data: item.title),
          side: BorderSide(color: Colors.grey.shade400),
        ),
      );
    }
    notifyListeners();
  }
}
