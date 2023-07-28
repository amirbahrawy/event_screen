import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../res/colors.dart';
import '../widgets/favorite_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _buildHeader(context),
            _buildDetails(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 420),
        SizedBox(
          height: 400,
          child: Image(
            image: const AssetImage('lib/assets/images/header_image.png'),
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          top: 16.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.share_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    'تفاصيل الفعالية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 0.0,
          left: 16.0,
          child: FavoriteButton(),
        )
      ],
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
                child: const Text('مدفوع'),
              ),
              const Spacer(),
              const Text(
                'جدارية علي البحر ',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          _buildComingNumber(context),
          const SizedBox(height: 16.0),
          _buildCalendar(context),
          const SizedBox(height: 16.0),
          _buildMap(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: Colors.grey,
              height: 1.0,
              endIndent: 16,
              indent: 16,
            ),
          ),
          _buildProfile(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: Colors.grey,
              height: 1.0,
              endIndent: 16,
              indent: 16,
            ),
          ),
          const Text(
            'عن الفعالية',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildTextDetails(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Image.asset('lib/assets/images/map_background.png'),
          ),
          const Text(
            'استوديو الصور',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildGallery(context),
          const SizedBox(height: 16.0),
          const Text(
            'فعاليات مشابهة',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildSimilarEvents(context),
          const SizedBox(height: 16.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              height: 90.0,
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
                child: const Text('حجز تذكرة الفعالية',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComingNumber(BuildContext context) {
    return Row(
      children: [
        const Text(
          'ذاهبون +20',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8.0),
        Image.asset('lib/assets/images/group.png'),
        const Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accentColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          child: const Text('الرسم'),
        ),
      ],
    );
  }

  Widget _buildCalendar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'الأربعاء , 14 ديسمبر , 2022',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '4:00PM - 9:00PM',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.calendar_today_rounded,
              color: AppColors.primaryColor,
              size: 36.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMap(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'ملعب الرياض',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'حي الملف فهد - الرياض - السعودية',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.location_on_rounded,
              color: AppColors.primaryColor,
              size: 36.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset('lib/assets/images/chat.svg'),
        const SizedBox(width: 8.0),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          child: const Text(
            'الغاء المتابعة',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'يوسف يحيى',
              style: TextStyle(
                color: AppColors.accentColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'منظم الحدث',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(width: 8.0),
        const Image(image: AssetImage('lib/assets/images/profile.png')),
      ],
    );
  }

  Widget _buildTextDetails(BuildContext context) {
    return RichText(
      locale: const Locale('ar'),
      textAlign: TextAlign.end,
      text: const TextSpan(
        text:
            'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت ',
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: 'قراءة المزيد',
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGallery(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 2.0,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    images[index],
                  ),
                ),
              ),
              if (index == 3)
                const Text(
                  '+30',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          );
        },
        itemCount: 4,
      ),
    );
  }

  Widget _buildSimilarEvents(BuildContext context) {
    return SizedBox(
      height: 320.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) => _buildEventItem(context),
        itemCount: 4,
      ),
    );
  }

  Widget _buildEventItem(BuildContext context) {
    return Card(
      elevation: 6.0,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Image.asset('lib/assets/images/event_1.png'),
                const Positioned(
                  top: 8.0,
                  left: 4.0,
                  child: FavoriteButton(),
                ),
                Positioned(
                  top: 8.0,
                  right: 4.0,
                  child: _buildEventDate(context),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              'رسم لوحة جدارية',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _buildComingNumber(context),
          ),
          const SizedBox(height: 8.0),
          _buildEventLocation(context),
        ],
      ),
    );
  }

  Widget _buildEventDate(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: const [
            Text(
              'يناير',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              '10',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventLocation(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            'حي الملك فهد - مكة - السعودية',
            style: TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 4.0),
          Icon(
            Icons.location_on_outlined,
            color: AppColors.accentColor,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}

const List<String> images = [
  'lib/assets/images/gallery_2.png',
  'lib/assets/images/gallery_1.png',
  'lib/assets/images/gallery_2.png',
  'lib/assets/images/gallery_1.png',
];
