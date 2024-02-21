import 'package:auto_route/auto_route.dart';
import 'package:dummy_ostello/components/atom/typography2.dart';
import 'package:dummy_ostello/components/atom/typography3.dart';
import 'package:dummy_ostello/model/amenities.dart';
import 'package:dummy_ostello/screens/amenities_screen/amenities_screen_view_model.dart';
import 'package:dummy_ostello/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class AmenitiesScreen extends StatelessWidget {
  const AmenitiesScreen({super.key, required this.listOfAmenities});

  final List<Amenities> listOfAmenities;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AmenitiesScreenViewModal(),
      builder: (ctx, model, _) => _Body(model: model),
      onViewModelReady: (viewModel) => viewModel.init(listOfAmenities),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.model});

  final AmenitiesScreenViewModal model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => AutoRouter.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        height: Functions.responsiveHeight(context: context, percent: 100),
        width: Functions.responsiveWidth(context: context, percent: 100),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TypoGraphy2(
                  data: 'Choose Amenities',
                  fontweight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 12,
                ),
                Typography3(
                  data:
                      'What amenities will students have access to in your institue?',
                  textColor: Colors.grey.shade500,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: GridView.builder(
                      padding: const EdgeInsets.only(bottom: 80),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 100,
                      ),
                      primary: false,
                      itemCount: model.data.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (ctx, index) => InkWell(
                          onTap: () => model.onAmenitiesClicked(index),
                          child: _Amenities(
                            item: model.data[index],
                          ))),
                )
              ],
            ),
            Positioned(
              bottom: 6,
              left: 10,
              right: 10,
              child: TextButton(
                onPressed: () => model.onSaveClicked(context),
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.purple)),
                child: SizedBox(
                  width:
                      Functions.responsiveWidth(context: context, percent: 80),
                  child: const TypoGraphy2(
                    data: 'Save',
                    textColor: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Amenities extends StatelessWidget {
  const _Amenities({
    super.key,
    required this.item,
  });

  final Amenities item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: item.isSelected ? Colors.purple : Colors.grey.shade400,
          ),
          color: item.isSelected
              ? const Color.fromARGB(255, 231, 194, 237)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            color: Colors.grey.shade600,
          ),
          const SizedBox(
            height: 10,
          ),
          Typography3(
            data: item.title,
            textColor: Colors.grey.shade800,
          )
        ],
      ),
    );
  }
}
