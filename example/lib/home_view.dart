import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/design_system.dart';
import 'package:example/movie_info.dart';
import 'package:example/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uuid/uuid.dart';

const List<String> popular = [
  "https://i.ytimg.com/vi/-XVXJgcl-NE/maxresdefault.jpg",
  "https://qqcdnpictest.mxplay.com/pic/500f8c5e98bf9d06e109d8b880a76342/en/16x9/640x360/b81a9283e34bb3d334e25f96ee904d99_1920x1080.jpg",
  "https://static.wixstatic.com/media/1d6dad_d724101337e84c36a5348c12430959f5~mv2.png/v1/fit/w_625%2Ch_354%2Cal_c/file.png",
  "https://i.postimg.cc/CYqtDBk0/8ac57d8c1114cb67fd06144eb5eab9e6.jpg?dl=1",
  "https://i0.wp.com/i.ytimg.com/vi/hkP4tVTdsz8/maxresdefault.jpg?w=474&ssl=1",
];
const List<String> friends = [
  "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/74837103CFC36C9E82C27589E8290F906B00A27A3AA5BB12906C009163C16978/scale?width=1200&aspectRatio=1.78&format=jpeg",
  "https://www.intofilm.org/intofilm-production/7146/scaledcropped/3000x1688/resources/7146/decoding-your-world-web-header-1792x1008px-02.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa7urO39h6fKwJbu33TQPEoUngM3fD6RpLPC9kvfWi1u0uqBFP_ApUbRUOZ7F1bRtYTSk&usqp=CAU",
  "https://www.manoramaonline.com/content/dam/mm/mo/movies/movie-news/images/2021/3/17/ram-setu.jpg",
  "https://i.ytimg.com/vi/cIqQCW6GQi4/maxresdefault.jpg"
];
const List<String> reason = [
  "https://i0.wp.com/www.showbizgalore.com/wp-content/uploads/2022/05/fgf.jpg?fit=1280%2C720&ssl=1",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJEsA4p5YAPURNVdy_MVgFIr_O-_BQz7aLptU_4JCi-l0HLDBlxMrYUYZkRG9LLlkK_vA&usqp=CAU",
  "https://english.makalukhabar.com/wp-content/uploads/2022/05/AVATAR-2-MK.webp",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8u8UgwY9GjSzKPTVl_a3b_75vlanamYzQDRJJeU3uJVTTf65HzL77MKCZXjySyddGgkM&usqp=CAU",
  "https://infoguidenigeria.com/wp-content/uploads/2022/04/Spider-Man.jpg",
];

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    const Logo(),
                    const Spacer(),
                    const Icon(Icons.cast, size: 30),
                    Gap.s10,
                    const Icon(Icons.search, size: 30),
                    Gap.s10,
                    const Icon(Icons.person, size: 30),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 412 / 384,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://www.yardbarker.com/media/e/8/e8694f3616f6b777fef570171dce78d6b0d1fb38/600_wide/dwayne-johnson.jpg",
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey.shade600,
                          highlightColor: Colors.grey.shade700,
                          child: Container(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(.7),
                                Colors.black,
                              ]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const AppText.h6(
                                    "Films",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  const Gap.both(74),
                                  Row(
                                    children: [
                                      const AppText.h6(
                                        "Catégories",
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Gap.s10,
                                      const Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const AppText.h6("Film", color: AppColor.primary),
                              const AppText.h3("MAN DOWN"),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  AppButton(
                                    size: const Size(0, 40),
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      size: 40,
                                    ),
                                    text: "Lecture",
                                    fontSize: 18,
                                    onPressed: () {},
                                  ),
                                  Gap.s20,
                                  AppButton.text(
                                    icon: const Icon(
                                      Icons.info,
                                      size: 30,
                                    ),
                                    text: "Infos",
                                    fontSize: 17,
                                    onPressed: () {},
                                  ),
                                  // AppButton.text(
                                  //   icon: const Icon(
                                  //     Icons.add_circle,
                                  //     size: 30,
                                  //   ),
                                  //   text: "Ma liste",
                                  //   fontSize: 17,
                                  //   onPressed: () {},
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Among friends
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MoviesCategory(
                  images: popular,
                  title: TwoText(
                    firstText: "Populaire sur OUT",
                    secondText: "BUSTER",
                    firstTextStyle:
                        AppTextStyle.body.copyWith(fontWeight: FontWeight.w600),
                    secondTextStyle: AppTextStyle.body.copyWith(
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MoviesCategory.textTitle(
                  title: "Entre potes",
                  images: friends,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MoviesCategory.textTitle(
                  title: "RAISON ET SENTIMENTS",
                  images: reason,
                ),
              ),
            ),
            SliverToBoxAdapter(child: SafeArea(top: false, child: Gap.s22))
          ],
        ),
      ),
    );
  }
}

class MoviesCategory extends StatelessWidget {
  const MoviesCategory({
    Key? key,
    required this.title,
    required this.images,
  }) : super(key: key);

  final Widget title;
  final List<String> images;

  MoviesCategory.textTitle({
    super.key,
    required String title,
    required this.images,
  }) : title = AppText.body(
          title,
          fontWeight: FontWeight.w700,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap.s20,
        title,
        Gap.s10,
        SizedBox(
          height: 100,
          child: ListView.separated(
            separatorBuilder: (context, index) => Gap.s14,
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final uuid = Uuid().v4();

              return Container(
                clipBehavior: Clip.hardEdge,
                height: 96,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: InkWell(
                  onTap: () => showBottomesheet(context, images[index], uuid),
                  child: Hero(
                    tag: uuid,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: images[index],
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey.shade600,
                        highlightColor: Colors.grey.shade700,
                        child: Container(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void showBottomesheet(context, String image, String heroTag) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      height: 96,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red,
                      ),
                      child: Hero(
                        tag: image,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: image,
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey.shade600,
                            highlightColor: Colors.grey.shade700,
                            child: Container(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Gap.s16,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.cancel,
                                size: 30,
                                color: AppColor.grey.shade600,
                              ),
                            ),
                          ),
                          const AppText.h5(
                            "MAN DOWN",
                            fontWeight: FontWeight.w700,
                          ),
                          Gap.s4,
                          const AppText.body2(
                            "2020 . 16+ . 2h21 mm",
                            color: Color(0xff707070),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap.s8,
                const AppText.body2(
                  "Lorem ipsum dolor sit amet, consetetur "
                  "sadipscing elitr, sed diam nonumy eirmod tempor "
                  "invidunt ut labore et dolore magna aliquyam erat…",
                ),
                Gap.s14,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            color: AppColor.primary,
                            padding: const EdgeInsets.all(4.0),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 36,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap.s8,
                        const AppText.body(
                          "Lecture",
                          color: AppColor.primary,
                        )
                        // Icon(Icons.share_rounded)
                        // Icon(Icons.check)
                      ],
                    ),
                    const Gap.both(64),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(4.0),
                            child: const Icon(
                              Icons.check,
                              size: 36,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap.s8,
                        const AppText.body(
                          "Ma liste",
                          color: Colors.white,
                        )
                        // Icon(Icons.share_rounded)
                        // Icon(Icons.check)
                      ],
                    ),
                    const Gap.both(64),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            color: AppColor.primary,
                            padding: const EdgeInsets.all(4.0),
                            child: const Icon(
                              Icons.share,
                              size: 36,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap.s8,
                        const AppText.body(
                          "Partager",
                          color: AppColor.primary,
                        )
                        // Icon(Icons.share_rounded)
                        // Icon(Icons.check)
                      ],
                    ),
                  ],
                ),
                Gap.s30,
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieInfo(
                            image: image,
                            heroTag: heroTag,
                          ),
                        ));
                  },
                  child: Row(
                    children: [
                      const ClipOval(
                        child: Icon(
                          Icons.info_sharp,
                          size: 50,
                        ),
                      ),
                      Gap.s4,
                      const AppText.button("Plus de détails sur le { type }"),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 40,
                      )
                    ],
                  ),
                ),
                Gap.s30,
              ],
            ),
          ),
        );
      },
    );
  }
}
