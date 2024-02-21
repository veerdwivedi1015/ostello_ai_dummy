import 'package:auto_route/auto_route.dart';
import 'package:dummy_ostello/components/atom/icon_text_component.dart';
import 'package:dummy_ostello/components/atom/typography1.dart';
import 'package:dummy_ostello/components/atom/typography2.dart';
import 'package:dummy_ostello/components/atom/typography3.dart';
import 'package:dummy_ostello/components/molecule/card_data.dart';
import 'package:dummy_ostello/components/molecule/card_data_item.dart';
import 'package:dummy_ostello/screens/home_screen/home_screen_view_mode.dart';
import 'package:dummy_ostello/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeScreenViewModel(),
      builder: (ctx, model, _) => _Body(model: model),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.model});

  final HomeScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Typography1(data: 'Institue Profile'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: Functions.responsiveHeight(context: context, percent: 100),
        width: Functions.responsiveWidth(context: context, percent: 100),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _ProfieCoverImage(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _InstitueInfo(),
                    const SizedBox(
                      height: 16,
                    ),
                    _ContactInfo(
                      model: model,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    _TimingOtherInfo(
                      model: model,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    _Ammenities(
                      model: model,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Image(
                      image: AssetImage('assets/map.png'),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfieCoverImage extends StatelessWidget {
  const _ProfieCoverImage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Functions.responsiveHeight(context: context, percent: 30),
      width: Functions.responsiveWidth(context: context, percent: 100),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image(
            height: Functions.responsiveHeight(context: context, percent: 25),
            width: Functions.responsiveWidth(context: context, percent: 100),
            image: const AssetImage('assets/photo_cover.png'),
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: 0,
            left: 16,
            child: CircleAvatar(
              maxRadius: 45,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 70,
            child: CircleAvatar(
              maxRadius: 15,
              backgroundImage: AssetImage('assets/blue_tick.png'),
            ),
          )
        ],
      ),
    );
  }
}

class _InstitueInfo extends StatelessWidget {
  const _InstitueInfo();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Typography1(
          align: TextAlign.start,
          data: 'Indian Coaching Institue',
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 12,
        ),
        TypoGraphy2(
          align: TextAlign.start,
          textColor: Colors.black,
          data:
              'Our team will visit your institute for an on-site verification, ensuring that all details such as infrastructure, faculty & facilities align with what\'s stated. Get a verified tick next to your institute\'s name on all online & offline platforms, indicating that your establishment is trustworthy. Our robust CRM system helps you track, and convert qualified leads with utmost efficiency and manage your institute\'s profile, update information.',
        ),
      ],
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo({required this.model});

  final HomeScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      cardHeader: 'Contact Info',
      icon: Icons.edit_outlined,
      widgets: [
        const CardDataItem(value1: 'Owner Name', value2: 'Prakash'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const CardDataItem(
          value1: 'Institute Mobile no',
          value2: '+91 9154232711',
          underLine: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const CardDataItem(
          value1: 'Landline no',
          value2: '+91 9154232711',
          underLine: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const CardDataItem(
          value1: 'Website',
          value2: 'India Coaching Institue',
          underLine: true,
        ),
      ],
    );
  }
}

class _TimingOtherInfo extends StatelessWidget {
  const _TimingOtherInfo({required this.model});

  final HomeScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      cardHeader: 'Timings & Other Info',
      icon: Icons.edit_outlined,
      widgets: [
        const CardDataItem(value1: 'Opening time', value2: '10:00 AM'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const CardDataItem(
          value1: 'Closing time',
          value2: '8:00 PM',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            top: 10,
          ),
          child: Typography3(
            textAlign: TextAlign.start,
            data: 'Every Sunday the institue is closed*',
            textColor: Colors.red,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CardDataItem(
          value1: 'Institue Started Date ',
          value2: '22/01/2010',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
        const CardDataItem(
          value1: 'Institue Type',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconTextComponent(
            chips: [
              Chip(
                label: const Typography3(data: 'Online'),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              Chip(
                label: const Typography3(data: 'Hybrid'),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              Chip(
                label: const Typography3(data: 'Remote'),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              Chip(
                label: const Typography3(data: 'One on Coaching'),
                side: BorderSide(color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Ammenities extends StatelessWidget {
  const _Ammenities({required this.model});

  final HomeScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      cardHeader: 'Amenities',
      icon: Icons.edit_outlined,
      callback: () => model.onAmmenitiesClicked(context),
      widgets: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconTextComponent(
            chips: [...model.amenitiesChips],
          ),
        ),
      ],
    );
  }
}
