import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:openfashion/components/appbar.dart';
import 'package:openfashion/components/custom_text.dart';
import 'package:openfashion/models/product_model.dart';
import 'package:openfashion/shared/themes/app_colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List brands = [
    'assets/icons/prada.svg',
    'assets/icons/burberry.svg',
    'assets/icons/boss.svg',
    'assets/icons/catier.svg',
    'assets/icons/gucci.svg',
    'assets/icons/tiffany & Co.svg',
  ];
  Map Category = {
    'All': true,
    'Apparel': false,
    'Dress': false,
    'Tshirt': false,
    'Bag': false,
  };
  List<String> trending = [
    '2021',
    'Spring',
    'Collection',
    'Fall',
    'Dress',
    'Autumncollection',
    'Openfashion',
  ];
  List shapes = [
    {
      'shape': 'assets/sapes/shape1.png',
      'subTitle': 'Fast shipping. Free\non orders over \$25.',
    },
    {
      'shape': 'assets/sapes/shape2.png',
      'subTitle': 'Sustainable process\nfrom start to finish.',
    },
    {
      'shape': 'assets/sapes/shape3.png',
      'subTitle': 'Unique designs\nand high-quality materials.',
    },
    {
      'shape': 'assets/sapes/shape4.png',
      'subTitle': 'Fast shipping.\nFree on orders over \$25.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,

      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Bannar1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/text/lfa.png'),
                  ),
                  Gap(130),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      backgroundColor: Colors.black.withOpacity(0.4),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                    ),
                    child: CustomText(
                      text: 'Explore Collection'.toUpperCase(),
                      size: 20.0,
                      color: AppColors.whte,
                    ),
                  ),
                  Gap(13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/whited.svg'),
                      Gap(8),
                      SvgPicture.asset('assets/icons/old.svg'),
                      Gap(8),
                      SvgPicture.asset('assets/icons/old.svg'),
                    ],
                  ),
                  Gap(40),
                ],
              ),
            ),
            Gap(35),
            Center(
              child: Column(
                children: [
                  CustomText(
                    text: 'New Arrival'.toUpperCase(),
                    size: 20.0,
                    color: AppColors.black0,
                    space: 8,
                  ),
                  Gap(10),
                  SvgPicture.asset('assets/icons/line.svg', width: 180.0),
                ],
              ),
            ),
            Gap(16),
            SizedBox(
              height: 40,
              width: 350,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (String key in Category.keys)
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: InkWell(
                            onTap: () {
                              Category[key] = !Category[key];
                              for (String k in Category.keys) {
                                if (k != key) {
                                  Category[k] = false;
                                }
                              }
                              setState(() {});
                            },

                            child: Column(
                              children: [
                                CustomText(
                                  text: key,
                                  size: 20,
                                  color:
                                      Category[key]
                                          ? AppColors.black
                                          : AppColors.gray,
                                ),
                                Category[key]
                                    ? SvgPicture.asset(
                                      'assets/icons/reddote.svg',
                                    )
                                    : const SizedBox.shrink(),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Gap(35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Product.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 13,
                  childAspectRatio: 0.60,
                ),
                itemBuilder: (context, index) {
                  final item = Product.products[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(item.image)),
                      Gap(8),
                      CustomText(
                        text: item.name,
                        size: 16,
                        color: AppColors.black,
                      ),
                      CustomText(
                        text: '\$ ${item.price.toString()}',
                        size: 16,
                        color: AppColors.red,
                      ),
                    ],
                  );
                },
              ),
            ),
            Gap(30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Explore More',
                    size: 24,
                    color: AppColors.black,
                  ),
                  Gap(10),
                  SvgPicture.asset('assets/icons/arrow.svg', width: 24),
                ],
              ),
            ),
            Gap(48),
            SvgPicture.asset('assets/icons/line.svg', width: 180.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 0,
                crossAxisSpacing: 20,
                children: [
                  for (int i = 0; i < brands.length; i++)
                    SvgPicture.asset(brands[i]),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/line.svg', width: 180.0),
            Gap(60),
            CustomText(
              text: 'Collections'.toUpperCase(),
              size: 24.0,
              color: AppColors.black0,
              space: 6,
            ),
            Gap(32),
            Stack(
              children: [
                Positioned(child: Image.asset('assets/images/bannar2.png')),
                Positioned(
                  top: 80,
                  left: 200,
                  child: Image.asset('assets/text/10.png', width: 200),
                ),
                Positioned(
                  top: 100,
                  left: 235,
                  child: Image.asset('assets/text/octobercol.png', width: 185),
                ),
              ],
            ),
            Gap(40),
            Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/img5.png', width: 260),
                ),
                Positioned(
                  top: 32,
                  left: 85,
                  child: Image.asset('assets/text/autumn.png', width: 172.0),
                ),
              ],
            ),
            Gap(32),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(child: Image.asset('assets/images/vi.png')),
                Positioned(
                  child: SvgPicture.asset('assets/icons/play.svg', width: 50),
                ),
              ],
            ),
            Gap(72),
            CustomText(
              text: 'Just for You'.toUpperCase(),
              size: 24.0,
              color: AppColors.black0,
              space: 2,
            ),
            Gap(12),
            SvgPicture.asset('assets/icons/line.svg', width: 180.0),
            Gap(22),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 420,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Product.sliderProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.42,
                  ),
                  itemBuilder: (context, index) {
                    final item = Product.sliderProducts[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage(item.image)),
                        Gap(8),
                        CustomText(
                          text: item.name,
                          size: 16,
                          color: AppColors.black,
                        ),
                        CustomText(
                          text: '\$ ${item.price.toString()}',
                          size: 16,
                          color: AppColors.red,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/gd.svg'),
                Gap(8),
                SvgPicture.asset('assets/icons/old.svg'),
                Gap(8),
                SvgPicture.asset('assets/icons/old.svg'),
                Gap(8),
                SvgPicture.asset('assets/icons/old.svg'),
              ],
            ),
            Gap(44),
            CustomText(
              text: '@Trending'.toUpperCase(),
              size: 24.0,
              color: AppColors.black0,
              space: 4,
            ),
            Gap(8),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 10.0,
                children: [
                  for (int i = 0; i < trending.length; i++)
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white9,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CustomText(
                          text: '#${trending[i].toLowerCase()}',
                          size: 14,
                          color: AppColors.black0,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 730,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.offWhite),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/logo/Logo.svg', width: 100.0),
                    Gap(20),
                    CustomText(
                      text:
                          'Making a luxurious lifestyle accessible\nfor a generous group of women is our\n daily drive.',
                      size: 18,
                      color: AppColors.darckGray,
                      textAlign: TextAlign.center,
                    ),
                    Gap(12),
                    SvgPicture.asset('assets/icons/line.svg', width: 180.0),
                    Gap(40),
                    SizedBox(
                      height: 400,
                      child: GridView.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          for (int i = 0; i < shapes.length; i++)
                            Column(
                              children: [
                                Image.asset(shapes[i]['shape'], width: 100),
                                Gap(10),
                                CustomText(
                                  text: shapes[i]['subTitle'],
                                  size: 16.0,
                                  color: AppColors.darckGray,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Image.asset('assets/sapes/shape5.png', width: 100),
                  ],
                ),
              ),
            ),
            Gap(32),
            CustomText(
              text: 'Follow Us'.toUpperCase(),
              size: 24.0,
              color: AppColors.black0,
              space: 4,
            ),
            Gap(16),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/instagramoutline.svg',
                width: 40,
              ),
            ),
            Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Accounts.acc.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.90,
                ),
                itemBuilder: (context, index) {
                  final account = Accounts.acc[index];
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(child: Image.asset(account.image)),
                      Container(
                        width: 185,
                        height: 185,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              // ignore: deprecated_member_use
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 10,
                        child: CustomText(
                          text: account.account,
                          size: 18.0,
                          color: AppColors.whte,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            Gap(60),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/twitter.svg', width: 32),
                  Gap(45),
                  SvgPicture.asset('assets/icons/instagram.svg', width: 32),
                  Gap(45),
                  SvgPicture.asset('assets/icons/youtube.svg', width: 32),
                ],
              ),
            ),
            Gap(32),
            SvgPicture.asset('assets/icons/line.svg', width: 180.0),
            Gap(18),
            Center(
              child: Column(
                children: [
                  CustomText(
                    text: 'support@openui.design',
                    size: 18,
                    color: AppColors.black,
                  ),
                  Gap(8),
                  CustomText(
                    text: '+60 825 876',
                    size: 18,
                    color: AppColors.black,
                  ),
                  Gap(8),
                  CustomText(
                    text: '08:00 - 22:00 - Everyday',
                    size: 18,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
            Gap(18),
            SvgPicture.asset('assets/icons/line.svg', width: 180.0),
            Gap(32),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'About',
                    size: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Gap(48),
                  CustomText(
                    text: 'Contact',
                    size: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Gap(48),
                  CustomText(
                    text: 'Blog',
                    size: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            Gap(24),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.offWhite),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Copyright© OpenUI All Rights Reserved.',
                    size: 14,
                    color: AppColors.darckGray,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
