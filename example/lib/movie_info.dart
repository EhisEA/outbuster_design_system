import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'home_view.dart';

class MovieInfo extends StatelessWidget {
  MovieInfo({super.key, required this.image, required this.heroTag});
  final String image;
  final String heroTag;

  final List<String> ads = ["Violence", "Sexe", "Drogue", "16 +"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(Icons.cast, size: 30),
          Gap.s14,
          const Icon(Icons.search, size: 30),
          Gap.s14,
          const Icon(Icons.person, size: 30),
        ],
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 412 / 232,
            child: Stack(
              children: [
                Hero(
                  tag: heroTag,
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
                Center(
                  child: Icon(
                    Icons.play_circle_fill_sharp,
                    color: Colors.white.withOpacity(.5),
                    size: 80,
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText.h6(
                    "Films",
                    color: AppColor.primary,
                  ),
                  const AppText.h3("MAN DOWN"),
                  const AppText.body2(
                    "2020 . 16+ . 2h21 mm",
                    color: Color(0xff707070),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppButton.expanded(
                      icon: const Icon(
                        Icons.play_arrow,
                        size: 50,
                      ),
                      text: "LECTURE",
                      fontSize: 22,
                      onPressed: () {},
                    ),
                  ),
                  const AppText.body(
                    "De retour d’une opération traumatisante en Afghanistan,"
                    " Gabriel Drummer, membre du corps des Marines, découvre "
                    "une Amérique complètement dévastée. En son absence, la "
                    "guerre a traversé les frontières : le chaos règne partout "
                    "sur le territoire et ceux qui ont survécu sont "
                    "livrés à eux-mêmes.",
                  ),
                  Gap.s16,
                  const AppText.body(
                    '''
Film américain 
Genre : Film de guerre 
Réalisé par : Dito Montiel 
Avec : Shia LaBeouf, Jai Courtney, Gary Oldman, Kate
Mara, Clifton Collins Jr. 
Durée : 1h30 
Film en VOST
                    ''',
                    color: Color(0xff707070),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/sens.png"),
                        Gap.s10,
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: AppText.h4(
                            "> 7,1",
                            color: AppColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/imdb.png"),
                        Gap.s10,
                        const AppText.h4(
                          "> 6,4",
                          color: AppColor.primary,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppText.body(
                          "CE QU’ON EN PENSE SUR",
                          fontWeight: FontWeight.bold,
                        ),
                        Gap.s10,
                        Image.asset("assets/sens.png")
                      ],
                    ),
                  ),
                  const AppText.body(
                    "Ce film est traité tout en finesse, pour nous emmène vers des images de guerre apocalyptique telle que l’esprit humain ayant subi le traumatisme la ressent au plus profond de son esprit embrouillé par tous ces drames qui éveillent en eux …",
                    color: Color(0xff707070),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: AppText.body2(
                      "Lire la critique complète de Sumo06 sur SensCritique",
                      color: AppColor.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppText.body(
                          "CE QU’ON EN PENSE SUR",
                          fontWeight: FontWeight.bold,
                        ),
                        Gap.s10,
                        Image.asset("assets/critiks.png")
                      ],
                    ),
                  ),
                  const AppText.body(
                    "Ce film est traité tout en finesse, pour nous emmène vers des images de guerre apocalyptique telle que l’esprit humain ayant subi le traumatisme la ressent au plus profond de son esprit embrouillé par tous ces drames qui éveillent en eux …",
                    color: Color(0xff707070),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: AppText.body2(
                      "Lire la critique complète de Olivier Demangeon sur CritiKs MoviZ",
                      color: AppColor.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const AppText.body(
                    "AVERTISSEMENTS",
                    fontWeight: FontWeight.bold,
                  ),
                  Gap.s14,
                  Row(
                    children: List.generate(
                      ads.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 14),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff707070),
                          ),
                        ),
                        child: AppText.small(
                          ads[index],
                          color: const Color(0xff707070),
                        ),
                      ),
                    ),
                  ),
                  Gap.s22,
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
                                Icons.add,
                                size: 36,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Gap.s8,
                          const AppText.body(
                            "Ma liste",
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
                  MoviesCategory(
                    images: popular,
                    title: TwoText(
                      firstText: "Populaire sur OUT",
                      secondText: "BUSTER",
                      firstTextStyle: AppTextStyle.body
                          .copyWith(fontWeight: FontWeight.w600),
                      secondTextStyle: AppTextStyle.body.copyWith(
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  MoviesCategory.textTitle(
                    title: "Entre potes",
                    images: friends,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
