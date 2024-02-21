import 'package:auto_route/auto_route.dart';
import 'package:dummy_ostello/model/amenities.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AmenitiesScreenViewModal extends BaseViewModel {
  final selectedList = <Amenities>[];

  final data = <Amenities>[
    Amenities(
      title: 'Air-conditioning',
      icon: Icons.ac_unit,
      isSelected: false,
    ),
    Amenities(
      title: 'Cafeteria',
      icon: Icons.fastfood_outlined,
      isSelected: false,
    ),
    Amenities(
      title: 'Free wifi',
      icon: Icons.wifi,
      isSelected: false,
    ),
    Amenities(
      title: 'Study Material',
      icon: Icons.camera,
      isSelected: false,
    ),
    Amenities(
      title: 'Study Material',
      icon: Icons.book,
      isSelected: false,
    ),
    Amenities(
      title: 'Osello Counselling',
      icon: Icons.smart_toy,
      isSelected: false,
    ),
    Amenities(
      title: 'Text Book',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Mock Tests',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Test Series',
      icon: Icons.list_alt,
      isSelected: false,
    ),
    Amenities(
      title: 'Problem Solving',
      icon: Icons.psychology,
      isSelected: false,
    ),
    Amenities(
      title: 'Sessions',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Digital Learning',
      icon: Icons.sensors,
      isSelected: false,
    ),
    Amenities(
      title: 'Webinars & Workshops',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Exam-Specific Tips',
      icon: Icons.emoji_objects,
      isSelected: false,
    ),
    Amenities(
      title: 'Performance Tracking',
      icon: Icons.donut_small,
      isSelected: false,
    ),
    Amenities(
      title: 'Library',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Restrooms',
      icon: Icons.wc,
      isSelected: false,
    ),
    Amenities(
      title: 'Classrooms',
      icon: Icons.cast_for_education,
      isSelected: false,
    ),
    Amenities(
      title: 'Drinking Water',
      icon: Icons.water,
      isSelected: false,
    ),
    Amenities(
      title: 'Psychometric',
      icon: Icons.rocket,
      isSelected: false,
    ),
    Amenities(
      title: 'Assesment',
      icon: Icons.description,
      isSelected: false,
    ),
    Amenities(
      title: 'VIP Study Rooms',
      icon: Icons.memory,
      isSelected: false,
    ),
    Amenities(
      title: 'Skill Development',
      icon: Icons.bar_chart,
      isSelected: false,
    ),
    Amenities(
      title: 'Courses',
      icon: Icons.book,
      isSelected: false,
    ),
    Amenities(
      title: 'Hostel Facility',
      icon: Icons.meeting_room,
      isSelected: false,
    ),
  ];

  void onAmenitiesClicked(int index) {
    data[index].isSelected = !data[index].isSelected;
    if (selectedList.contains(data[index])) {
      selectedList.remove(data[index]);
    } else {
      selectedList.add(data[index]);
    }

    notifyListeners();
  }

  init(List<Amenities> listOfAmenities) {
    selectedList.addAll(listOfAmenities);
    print('this called');
    for (var item in data) {
      print('working2');
      if (listOfAmenities.contains(item)) {
        item.isSelected = true;
        print('working');
      }
    }
    notifyListeners();
  }

  void onSaveClicked(BuildContext context) {
    AutoRouter.of(context).pop(selectedList);
  }
}
