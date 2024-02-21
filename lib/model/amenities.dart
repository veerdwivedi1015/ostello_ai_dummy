import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Amenities extends Equatable {
  final String title;
  final IconData icon;
  bool isSelected;

  Amenities({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });

  @override
  List<Object?> get props => [title, icon];
}
